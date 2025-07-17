# 📄 Naming Convention – Testing Documentation

This document outlines the naming rules for test-related files, folders, test cases, and identifiers in the **Python Project Templates** project.

---

## 📁 Folder Names

- Use **kebab-case** (lowercase with dashes)
- Example: `docs/testing-guideline/`

---

## 📄 File Names

- Also use **kebab-case** for all Markdown and script files
- Always include a date suffix (`YYYYMMDD`) for versioned reports
- Use `-template.md` suffix for reusable templates

| Purpose                        | Naming Convention Example                     |
|-------------------------------|-----------------------------------------------|
| Test plan                     | `business-tests-20250720.md`                  |
| Test execution report         | `test-execution-report-20250720.md`          |
| Tester notes                  | `tester-notes-20250720.md`                   |
| Issues list                   | `todo-issues-20250720.md`                    |
| Prioritized issues            | `todo-issues-20250720-priorytety.md`         |
| Backlog                       | `issues-backlog-20250720.md`                 |
| Regression test checklist     | `regression-tests-20250720.md`               |
| Mapping of tests              | `tests-mapping-20250720.md`                  |
| Template files                | `*-template.md` (e.g. `test-execution-report-template.md`) |

---

## 🧪 Test Identifiers

- Format: `PREFIX-NNN`
- Example: `CLI-001`, `API-003`, `ENV-002`

| Prefix | Area                 |
|--------|----------------------|
| CLI    | Command Line Interface tests |
| API    | REST API / FastAPI tests    |
| GUI    | GUI application tests       |
| ENV    | Virtual environment setup   |
| DOC    | Documentation validation    |
| CUS    | Custom template handling    |

---

## ✅ Best Practices

- Do not overwrite files with test results — version them by date.
- Keep templates unmodified; copy them into new files for each test cycle.
- Use consistent prefixes in test IDs and reference them in reports and notes.

---

## 🧭 Related Files

- `testing-guide.md` – Process overview for testers
- `testing-specification.md` – Fields, tags, structure and standards