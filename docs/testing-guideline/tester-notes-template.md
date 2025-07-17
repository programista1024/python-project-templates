# 📝 Tester Notes Template

Use this file to record free-form notes during the test session.

---

## 🗒️ Observations related to test cases

- [TEST-ID] – [Description of the issue, observation, or confusion during testing]
- [TEST-ID] – [Comment on behavior, unexpected result, or missing documentation]

Examples:
- CLI-003 – Running without arguments throws a usage error; suggest adding usage example to README.
- API-003 – Missing `uvicorn` launch instructions in project output or documentation.

---

## 💡 Suggestions for improvement

- [Short proposal for improving a feature, test, or documentation]
- [Idea for new scripts, automation, or UI enhancement]

Examples:
- Add `clean_project.sh` to delete `venv/`, `.vscode/`, and `__pycache__`
- Implement `list_projects.sh` to show generated projects with their template origin

---

## ❓ Questions / Unclear areas

- [Test or behavior that needs clarification or seems inconsistent]
- [Missing details in documentation, unclear test result expectations]

Examples:
- Does `setup_env.sh` overwrite existing venv if `--reinstall` is not used?
- Should custom template name be registered somewhere?