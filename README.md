# Python Project Templates

This repository provides a collection of ready-to-use starter templates for Python applications. Whether you're building a command-line tool, desktop GUI, or web API – this template system helps you get started quickly with a consistent project structure, virtual environment setup, and dependency management.

Inspired by common project initializers (like Spring Boot Initializer), this repo lets you generate Python projects with a single command.

## 🚀 Features

- 🧰 Predefined templates:
  - `cli-app/` – Command-line interface using Typer and Rich
  - `gui-app/` – Desktop GUI using PySide6
  - `api-server/` – REST API with FastAPI
- 🔁 Common shell scripts:
  - Creating and managing virtual environments
  - Installing dependencies
  - Initializing a clean folder structure
- ✅ Typing and linting ready (`mypy`, `pylint`)
- 🔧 Easily extendable with new templates

## 📦 Usage

```bash
git clone https://github.com/programista1024/python-project-templates.git
cd python-project-templates

# Make sure the setup scripts are executable
chmod +x setup_env.sh init_project.sh

# Initialize a new project from a template
./init_project.sh --template cli-app --name my_cli_tool

# Enter project and set up environment
cd projects/my_cli_tool
./setup_env.sh
```

## 📁 Repository structure

```
python-project-templates/
├── init_project.sh       # Project generator
├── setup_env.sh          # venv and requirements installer
├── templates/            # Template blueprints
│   ├── cli-app/
│   ├── gui-app/
│   └── api-server/
└── projects/             # Your generated projects go here
```

> **Note:** The `projects/` folder is listed in `.gitignore` and is not tracked by Git.  
> This folder is intended for locally generated projects based on the templates.  
> Each user can safely use this directory to experiment without affecting the repository.

## 📁 templates/

This directory contains ready-to-use Python starter templates. You can generate a new project by copying one of them into the `projects/` folder.

👉 Each template includes:
- A main script (`main.py`)
- A minimal `requirements.txt`
- An optional `.vscode` folder for VS Code users

---

## 🧪 Testing templates directly (without generating a project)

If you want to test a starter template before using the generator:

1. Go to the selected template directory, e.g.:

   ```bash
   cd templates/cli-app
   ```

2. Create and activate a virtual environment:

   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install the required dependencies:

   ```bash
   pip install -r requirements.txt
   ```

4. Run the starter script:

   ```bash
   python main.py programista1024
   ```

Each template contains its own `requirements.txt` file with the necessary dependencies.

## 🤝 How to contribute

- Found a bug or have an idea? Open an issue or pull request.
- Follow PEP8 and document your code.
- Contributions are welcome — see [CONTRIBUTING.md](CONTRIBUTING.md) (coming soon).

## 📜 License

Licensed under the [MIT License](LICENSE).

## 👤 Author

Created and maintained by **Grzegorz Wieczerzak**  
🌐 [www.wieczerzak.pl](https://www.wieczerzak.pl)  
🎓 [programista1024.pl](https://programista1024.pl)  
🧭 Original GitHub repository:  
[github.com/programista1024/python-project-templates](https://github.com/programista1024/python-project-templates)