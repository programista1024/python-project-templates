# Documentation for init_project.sh script

`init_project.sh` is a script for generating new Python projects from predefined templates.

## 📦 Usage

```bash
./init_project.sh --name myapp --template cli-app
./init_project.sh --interactive
```

## 🧰 Available Templates

- `cli-app` – Command-line interface using Typer and Rich
- `gui-app` – Desktop GUI using PySide6
- `api-server` – REST API using FastAPI

## 🧑‍💻 Interactive Mode

Run with:

```bash
./init_project.sh --interactive
```

You will be prompted to select a template and enter the project name.

## ⚙️ Options

| Option            | Description                                           |
|-------------------|-------------------------------------------------------|
| `--name`          | Name of the new project                               |
| `--template`      | Template to use (`cli-app`, `gui-app`, `api-server`)  |
| `--reinstall`     | Overwrite project if it already exists                |
| `--interactive`   | Run in interactive mode                               |
| `--help`, `-h`    | Display help message                                  |
