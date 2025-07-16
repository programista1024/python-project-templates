# Example Workflows and Common Scenarios

## 🛠 Create a CLI App

```bash
./init_project.sh --name test-cli --template cli-app
cd projects/test-cli
../../setup_env.sh
source venv/bin/activate
python main.py --help
```

## 🎛 Interactive Template Selection

```bash
./init_project.sh --interactive
```

## 🐍 Use Custom Python Interpreter

```bash
./setup_env.sh --python-path /usr/bin/python3.12
```

## ♻️ Reinstall Environment

```bash
./setup_env.sh --reinstall
```
