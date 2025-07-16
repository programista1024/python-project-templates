# 🔧 setup_env.sh – Virtual Environment Initializer

`setup_env.sh` sets up a Python virtual environment and installs dependencies for the generated project.

## 🧩 Features

- Creates a `venv/` directory
- Installs dependencies from `requirements.txt`
- Supports:
  - `--reinstall`
  - `--python-path`
  - `--help`, `-h`

## 🖥️ Usage

```bash
./setup_env.sh [--reinstall] [--python-path /path/to/python] [--help]
```

## 📌 Options

| Option              | Description |
|---------------------|-------------|
| `--reinstall`       | Recreate the virtual environment if it exists |
| `--python-path`     | Specify a custom Python interpreter |
| `--help`, `-h`      | Show help message |

## ✅ Example

```bash
cd projects/my-app/
../../setup_env.sh --reinstall --python-path /usr/bin/python3.12
source venv/bin/activate
python main.py
```
