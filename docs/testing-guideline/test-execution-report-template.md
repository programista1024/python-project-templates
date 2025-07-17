# 🧪 Test Execution Report – TEMPLATE

## Metadata
- Tester: [Full Name]
- Test Date: [YYYY-MM-DD]
- Operating System: [Linux / Windows / macOS]
- Python Version: [e.g. 3.12.x]
- Test Type: manual / semi-automated / automated

---

## CLI – Command Line Interface

### CLI-001 Generate CLI project
- **Command**: ./init_project.sh --template cli-app --name test_cli
- **Result**: [✅ / ❌ / ⚠️ / ❓]
- **Console output**:
- **Comments**:

### CLI-002 Initialize environment
- **Command**: ../../setup_env.sh
- **Result**:
- **Console output**:
- **Comments**:

### CLI-003 Run generated CLI project
- **Command**: python main.py Alice
- **Result**:
- **Console output**:
- **Comments**:

---

## API – Web Server

### API-001 Generate API server project
- **Command**: ./init_project.sh --template api-server --name test_api
- **Result**:
- **Console output**:
- **Comments**:

### API-002 Initialize environment
- **Command**: ../../setup_env.sh
- **Result**:
- **Console output**:
- **Comments**:

### API-003 Run API with uvicorn
- **Command**: uvicorn main:app --reload
- **Result**:
- **Console output**:
- **Comments**:

---

## GUI – Desktop Application

### GUI-001 Generate GUI project
- **Command**: ./init_project.sh --template gui-app --name test_gui
- **Result**:
- **Console output**:
- **Comments**:

### GUI-002 Initialize environment
- **Command**: ../../setup_env.sh
- **Result**:
- **Console output**:
- **Comments**:

---

## CUSTOM – Custom Templates

### CUS-001 Add custom template
- **Command**: cp -r templates/cli-app templates/my-cli-app
- **Result**:
- **Console output**:
- **Comments**:

---

## ENV – Virtual Environment

### ENV-001 Reinstall environment
- **Command**: ../../setup_env.sh --reinstall
- **Result**:
- **Console output**:
- **Comments**:

### ENV-002 Use custom Python interpreter
- **Command**: ../../setup_env.sh --python-path /usr/bin/python3.12
- **Result**:
- **Console output**:
- **Comments**: