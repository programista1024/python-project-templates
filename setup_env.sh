#!/usr/bin/env bash
# =============================================================================
# File:            setup_env.sh
# Description:     Sets up Python virtual environment and installs dependencies
#
# Project:         python-project-templates
# Author:          Grzegorz Wieczerzak (https://programista1024.pl)
# License:         MIT License
#
# Version:         0.2.0
# Created:         2025-07-01
# Last updated:    2025-07-17
#
# Usage:
#   ./setup_env.sh [--reinstall] [--python-path /path/to/python] [--help]
#
# See also:         CHANGES.md, CHANGELOG.md
#
# Change Log:
#   2025-07-01 - v0.1.0 - Initial version with argument parsing and venv setup
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
