# 📄 Business Tests Template

Use this file to define business-level tests for a given release. Each test should have a unique ID, description, expected result, and acceptance criteria.

---

## CLI – Command Line Interface

### CLI-001 Generate CLI project
- **Type**: functional
- **Command**: ./init_project.sh --template cli-app --name test_cli
- **Expected result**: Project is created in `projects/test_cli` folder
- **Acceptance criteria**: Directory created, expected files present, no errors shown

### CLI-002 Initialize environment
- **Type**: functional
- **Command**: ../../setup_env.sh
- **Expected result**: Virtual environment created, dependencies installed
- **Acceptance criteria**: `venv/` exists, `pip list` shows installed packages

### CLI-003 Run generated CLI project
- **Type**: functional
- **Command**: python main.py Alice
- **Expected result**: Console displays greeting
- **Acceptance criteria**: Output contains "Hello Alice", exit code 0, no traceback

---

## API – Web Server

### API-001 Generate API server project
- **Type**: functional
- **Command**: ./init_project.sh --template api-server --name test_api
- **Expected result**: FastAPI project structure is created
- **Acceptance criteria**: Project folder created, no error messages, contains `main.py`

### API-002 Initialize environment
- **Type**: functional
- **Command**: ../../setup_env.sh
- **Expected result**: Virtual environment ready to use
- **Acceptance criteria**: Environment activates, no dependency errors

### API-003 Run API with uvicorn
- **Type**: integration
- **Command**: uvicorn main:app --reload
- **Expected result**: App starts and listens on localhost
- **Acceptance criteria**: No error in console, open `/docs` in browser works

---

## GUI – Desktop Application

### GUI-001 Generate GUI project
- **Type**: functional
- **Command**: ./init_project.sh --template gui-app --name test_gui
- **Expected result**: PySide6 GUI project is scaffolded
- **Acceptance criteria**: Folder created, contains `main.py`, no errors

### GUI-002 Initialize environment
- **Type**: functional
- **Command**: ../../setup_env.sh
- **Expected result**: GUI dependencies installed
- **Acceptance criteria**: PySide6 available in `venv`, app can be launched

---

## CUSTOM – Custom Templates

### CUS-001 Add custom template
- **Type**: doc
- **Command**: cp -r templates/cli-app templates/my-cli-app
- **Expected result**: Custom template available under new name
- **Acceptance criteria**: Can initialize project using new template without errors

---

## ENV – Virtual Environment

### ENV-001 Reinstall environment
- **Type**: functional
- **Command**: ../../setup_env.sh --reinstall
- **Expected result**: Old venv removed, new one created
- **Acceptance criteria**: Clean install, no residual config, pip works

### ENV-002 Use custom Python interpreter
- **Type**: functional
- **Command**: ../../setup_env.sh --python-path /usr/bin/python3.12
- **Expected result**: Environment created with specified interpreter
- **Acceptance criteria**: Python version matches, activation successful