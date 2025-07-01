# Python Project Templates

This repository provides a collection of ready-to-use starter templates for Python applications. Whether you're building a command-line tool, desktop GUI, or web API – this template system helps you get started quickly with a consistent project structure, virtual environment setup, and dependency management.

Inspired by common project initializers (like Spring Boot Initializer), this repo lets you generate Python projects with a single command.

## 🚀 Features

- 🧰 Templates:
  - `cli-app/` – Command-line app using Typer and Rich
  - `gui-app/` – Desktop GUI using PySide6
  - `api-server/` – REST API with FastAPI
- 🔁 Shell scripts for:
  - Project initialization
  - Virtual environment setup and dependency installation
- ✅ Ready for static typing and linting (`mypy`, `pylint`)
- 🔧 Easily extensible with new templates

## 📦 Quick Start

```bash
git clone https://github.com/programista1024/python-project-templates.git
cd python-project-templates

# Make sure the setup scripts are executable
chmod +x setup_env.sh init_project.sh

# Initialize a new project from a template
./init_project.sh --template cli-app --name my_cli_tool

# Enter project and set up environment
cd projects/my_cli_tool
../../setup_env.sh
```

## 📁 Repository structure

```
python-project-templates/
├── init_project.sh       # Project generator script
├── setup_env.sh          # Virtual environment setup script
├── templates/            # Starter templates
│   ├── cli-app/
│   ├── gui-app/
│   └── api-server/
└── projects/             # Locally generated projects (gitignored)
```

> **Note:** The `projects/` folder is currently empty and listed in `.gitignore`, so its contents are not tracked by Git.
> This folder is intended for locally generated projects based on the templates.  
> Each user can safely use this directory to experiment without affecting the repository.

## 📚 Documentation
For detailed usage, options, and examples, please see the docs/ folder:

* docs/init_project.md — project initialization script docs
* docs/setup_env.md — virtual environment setup docs
* docs/templates.md — template descriptions and usage
* docs/usage_examples.md — example workflows and tips

## 🧪 Testing Templates Directly

You can test templates before generating projects by:

```bash
cd templates/cli-app       # or gui-app, api-server
python3 -m venv venv
source venv/bin/activate   # On Windows: venv\Scripts\activate
pip install -r requirements.txt
python main.py [required_args]
```

## 🤝 How to contribute

Contributions and bug reports are welcome! Please check [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines..

## 📜 License

Licensed under the [MIT License](LICENSE).

## 👤 Author

Created and maintained by **Grzegorz Wieczerzak**  
🌐 [www.wieczerzak.pl](https://www.wieczerzak.pl)  
🎓 [programista1024.pl](https://programista1024.pl)  
🧭 Original GitHub repository:  
[github.com/programista1024/python-project-templates](https://github.com/programista1024/python-project-templates)