# List of Templates

Available templates:

- `cli-app/` – CLI tool using Typer + Rich
- `gui-app/` – Desktop GUI using PySide6
- `api-server/` – REST API using FastAPI

Each template includes:
- `main.py`
- `requirements.txt`
- Optional configuration files

Templates are stored in the `templates/` folder and copied into `projects/` on generation.


## 🛠 How to Add a Custom Template

To create your own template:

1. Copy one of the existing templates (e.g. `templates/cli-app`) and rename it:
   ```bash
   cp -r templates/cli-app templates/my-template
   ```
2. Modify or replace:
   - `main.py`
   - `requirements.txt`
   - any additional files
3. Generate a project from your custom template:
   ```bash
   ./init_project.sh --name my_project --template my-template
   ```

You can test it directly by navigating into the folder and running:
```bash
cd templates/my-template
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python main.py
```
