# 🧭 Test Mapping Template

This file maps each test case to its related implementation files, functionality category, introduction date, and regression status.

---

| Test ID    | Related File/Functionality       | Category        | Introduced On | Regression | Description                                        |
|------------|----------------------------------|------------------|---------------|------------|----------------------------------------------------|
| CLI-001    | init_project.sh                  | CLI generator    | 2025-07-01    | true       | Generates new CLI project from template            |
| CLI-002    | setup_env.sh                     | Environment      | 2025-07-01    | true       | Initializes virtual environment and installs deps  |
| CLI-003    | main.py (CLI)                    | CLI runtime      | 2025-07-01    | true       | Runs CLI application with arguments                |
| API-001    | init_project.sh, templates/api   | API generator    | 2025-07-01    | true       | Generates FastAPI-based API project                |
| API-003    | uvicorn main:app                 | API runtime      | 2025-07-16    | false      | Runs API server using Uvicorn                      |
| ENV-002    | setup_env.sh (--python-path)     | Environment      | 2025-07-16    | false      | Initializes env using custom Python interpreter    |
| DOC-001    | README.md, overview.md           | Documentation    | 2025-07-16    | false      | Documentation completeness and consistency check   |
| CUS-001    | templates/cli-app → my-cli-app   | Custom template  | 2025-07-16    | false      | Adds and uses a custom project template            |

---

## 🔖 Column Explanation:

- **Test ID**: Matches the ID in `business-tests.md`
- **Related File/Functionality**: Source file(s) or module(s) related to this test
- **Category**: Functional area (e.g., CLI, API, ENV, DOC, GUI)
- **Introduced On**: Date this functionality or test was introduced
- **Regression**: `true` if the test should be part of regression suite
- **Description**: Short explanation of the tested functionality

---

## ✅ Usage Tips:

- Use this file to generate `regression-tests.md` by filtering `Regression: true`
- Update when adding new test cases or refactoring project components
- Helpful for determining impact of recent changes via `git diff`