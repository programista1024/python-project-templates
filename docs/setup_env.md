# 🔧 setup_env.sh – Virtual Environment Initializer

`setup_env.sh` is a helper script for setting up a Python virtual environment (`venv/`) and installing dependencies for a given starter project.

It is intended to be run from within a generated project folder (e.g. `projects/my-app/`) created using `init_project.sh`.

---

## 🧩 Features

- Automatically creates a Python virtual environment in `./venv/`
- Installs dependencies from `requirements.txt` if present
- Supports:
  - Forcing reinstallation with `--reinstall`
  - Custom Python interpreter path with `--python-path`
  - Help message with `--help`

---

## 🖥️ Usage

```bash
./setup_env.sh [--reinstall] [--python-path /path/to/python] [--help]
```

---

## 📌 Options

| Option              | Description |
|---------------------|-------------|
| `--reinstall`       | Delete and recreate the virtual environment if it exists |
| `--python-path`     | Specify an alternative Python interpreter (e.g. `/usr/bin/python3.12`) |
| `--help`, `-h`      | Show usage information and exit |

---

## ✅ Typical Workflow

```bash
cd projects/my-app/
../../setup_env.sh
source venv/bin/activate
python main.py
```

---

## 📂 Expected Project Layout

```
my-app/
├── main.py
├── requirements.txt
├── venv/                  # Created by setup_env.sh
└── .vscode/               # Optional, VS Code config
```

---

## ⚠️ Requirements

- Python 3.8+ (recommended: 3.12)
- `requirements.txt` should be present in the root of the project folder

---

## 🐛 Troubleshooting

- **"Permission denied"**: Make sure the script is executable:  
  `chmod +x setup_env.sh`

- **Missing python version**: Use `--python-path` to point to an existing Python binary

---

## 🔗 See also

- [init_project.sh documentation](init_project.md)
- [Starter template list](templates.md)
