#!/usr/bin/env bash
# =============================================================================
# setup_env.sh - Python virtual environment and dependency setup script
#
# Project:        python-project-templates
# Author:         Grzegorz Wieczerzak (programista1024.pl)
# Version:        0.1.0
# License:        MIT License
# Created:        2025-07-01
# Last updated:   2025-07-01
#
# Description:
#   This script sets up a Python virtual environment for a given project
#   and installs dependencies from requirements.txt. Supports reinstall
#   and custom Python interpreter path.
#
# Usage:
#   ./setup_env.sh [--reinstall] [--python-path /path/to/python] [--help]
#
# History:
#   0.1.0 - Initial version with argument parsing and venv setup
# =============================================================================

set -e

print_help() {
    cat << EOF
setup_env.sh - Virtual environment setup script for Python projects

Usage:
  $0 [--reinstall] [--python-path /path/to/python] [--help]

Options:
  --reinstall         Recreate venv/ if it already exists
  --python-path PATH  Use a custom Python interpreter
  --help, -h          Show this help message and exit
EOF
}

# Default values
REINSTALL=false
PYTHON_PATH="python3"

# Argument parsing
while [[ $# -gt 0 ]]; do
  case $1 in
    --reinstall)
      REINSTALL=true
      shift
      ;;
    --python-path)
      PYTHON_PATH="$2"
      shift 2
      ;;
    --help|-h)
      print_help
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      print_help
      exit 1
      ;;
  esac
done

# Run setup
if [[ $REINSTALL == true && -d "venv" ]]; then
    echo "Removing existing venv/ directory..."
    rm -rf venv
fi

echo "Creating virtual environment using: $PYTHON_PATH"
$PYTHON_PATH -m venv venv

echo "Activating and installing dependencies..."
source venv/bin/activate

if [[ -f "requirements.txt" ]]; then
    pip install --upgrade pip
    pip install -r requirements.txt
else
    echo "No requirements.txt found — skipping dependency installation."
fi

echo "Environment setup complete."
