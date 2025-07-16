# Python Project Templates

This repository provides a set of ready-to-use starter templates for Python applications. Whether you're building a command-line tool, desktop GUI, or web API – this template system helps you start quickly with a consistent structure and environment setup.

Inspired by tools like Spring Boot Initializer.

## 🚀 Templates Available

- `cli-app/` – CLI tool (Typer + Rich)
- `gui-app/` – Desktop GUI (PySide6)
- `api-server/` – REST API (FastAPI)

## 📦 Quick Start

```bash
git clone https://github.com/programista1024/python-project-templates.git
cd python-project-templates

chmod +x setup_env.sh init_project.sh
./init_project.sh --template cli-app --name my_cli_tool
cd projects/my_cli_tool
../../setup_env.sh
```

## 📁 Repository structure

```
python-project-templates/
├── init_project.sh       # Project generator script
├── setup_env.sh          # Environment setup script
├── templates/            # Starter templates
└── projects/             # Generated projects (gitignored)
```

> Projects are created in the `projects/` directory and not tracked by Git.

## 📚 Documentation

See the `docs/` folder for detailed guides:

- `init_project.md` — how to initialize a project
- `setup_env.md` — set up virtual environments
- `templates.md` — available templates
- `usage_examples.md` — example workflows

## 🤝 How to contribute

Contributions and bug reports are welcome! Please check [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines..

## 📜 License

Licensed under the [MIT License](LICENSE).

## 👤 Author

Created and maintained by **Grzegorz Wieczerzak**  
🌐 [www.wieczerzak.pl](https://www.wieczerzak.pl)  
🎓 [programista1024.pl](https://programista1024.pl)  
🧭 [GitHub Repo](https://github.com/programista1024/python-project-templates)