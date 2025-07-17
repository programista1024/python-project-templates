#!/usr/bin/env bash
# =============================================================================
# File:            init_project.sh
# Description:     Generates a new Python project from a selected template
#
# Project:         python-project-templates
# Author:          Grzegorz Wieczerzak (https://programista1024.pl)
# License:         MIT License
#
# Version:         0.1.0
# Created:         2025-06-29
# Last updated:    2025-07-17
#
# Usage:
#   ./init_project.sh --name myapp --template cli-app
#   ./init_project.sh --interactive
#
# See also:         CHANGES.md, CHANGELOG.md
#
# Change Log:
#   2025-06-29 - v0.1.0 - Initial version with basic project creation and interactive mode
# =============================================================================
set -e

# Default values
TEMPLATES_DIR="templates"
PROJECTS_DIR="projects"
PROJECT_NAME=""
TEMPLATE_NAME=""
REINSTALL=false

print_help() {
    cat << EOF
init_project.sh - Project initializer script

Usage:
  $0 --name <project_name> --template <template_name> [--reinstall]
  $0 --interactive | -i
  $0 --help | -h

Options:
  --name        Name of the new project
  --template    Template to use (cli-app, gui-app, api-server)
  --reinstall   Overwrite existing project if it exists
  --interactive, -i   Run script in interactive mode
  --help, -h    Show this help message and exit

EOF
}

print_logo() {
    cat << "EOF"
PyTemplates v0.1
Python Project Templates Initializer
by programista1024.pl (c) 2025
EOF
}

print_logo

# --help
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    print_help
    exit 0
fi

# Interactive mode
if [[ "$1" == "--interactive" || "$1" == "-i" ]]; then
    echo "Interactive mode"

    # List of project templates
    templates=(cli-app gui-app api-server)
    echo "Available templates:"
    select template in "${templates[@]}"; do
        [[ -n "$template" ]] && break
    done
    TEMPLATE_NAME="$template"

    read -p "Enter project name: " PROJECT_NAME

    if [[ -d "$PROJECTS_DIR/$PROJECT_NAME" ]]; then
        read -p "Project exists. Overwrite? (y/N): " confirm
        [[ "$confirm" =~ ^[Yy]$ ]] || exit 1
        REINSTALL=true
    fi
else
    # Parsing arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            --name)
                PROJECT_NAME="$2"
                shift 2
                ;;
            --template)
                TEMPLATE_NAME="$2"
                shift 2
                ;;
            --reinstall)
                REINSTALL=true
                shift
                ;;
            *)
                echo "Unknown option: $1"
                exit 1
                ;;
        esac
    done
fi

# Check for required arguments
if [[ -z "$PROJECT_NAME" || -z "$TEMPLATE_NAME" ]]; then
    echo "Missing required arguments."
    echo "Use: --name <project_name> --template <template_name>"
    echo "Or run in interactive mode: --interactive"
    echo "For help, run: $0 --help"
    exit 1
fi

SRC="$TEMPLATES_DIR/$TEMPLATE_NAME"
DST="$PROJECTS_DIR/$PROJECT_NAME"

# Check for source directory of selected template
if [[ ! -d "$SRC" ]]; then
    echo "Template '$TEMPLATE_NAME' not found in $TEMPLATES_DIR"
    exit 1
fi

# Overwriting the project
if [[ -d "$DST" ]]; then
    if [[ "$REINSTALL" == true ]]; then
        echo "Removing existing project: $DST"
        rm -rf "$DST"
    else
        echo "Project already exists. Use --reinstall to overwrite."
        exit 1
    fi
fi

# Copying a project from selected template
mkdir -p "$PROJECTS_DIR"
rsync -av --exclude 'venv' "$SRC/" "$DST/"

echo "Project '$PROJECT_NAME' created using template '$TEMPLATE_NAME'."
echo "Location: $DST"

# Hint about next steps to do
echo ""
echo "Next steps:"
echo "cd $DST"
echo "../../setup_env.sh"
