# 📂 Testing Guideline

This folder contains all templates, guides, and documentation files related to the manual and semi-automated testing process of the **Python Project Templates** repository.

Use these files to create consistent, well-structured test plans, execution reports, mappings, and documentation.

---

## 📄 Core Templates

| File                                      | Description |
|-------------------------------------------|-------------|
| `business-tests-template.md`              | Template for defining business-level test cases, including ID, type, expected result, and acceptance criteria |
| `test-execution-report-template.md`       | Template for documenting the result of test execution: command used, output, result, and comments |
| `tester-notes-template.md`                | Free-form notes template for testers to record observations, feedback, and suggestions during testing |
| `tests-mapping-template.md`               | Template for mapping test cases to source files, features, and regression status |
| `testing-guide.md`                        | Human-friendly onboarding document for new testers, including workflow and file structure |
| `testing-specification.md`                | Technical reference defining expected file formats, fields, tags, and best practices |

---

## 🧩 Supplemental Templates

| File                                      | Description |
|-------------------------------------------|-------------|
| `todo-issues-template.md`                 | Simple TODO list for capturing raw issues post-testing |
| `todo-issues-priorytety-template.md`      | Prioritized issues list with tags and justification |
| `issues-backlog-template.md`              | Backlog tracker for deferred, split, or optional issues |
| `regression-tests-template.md`            | Checklist of test cases to repeat for regression testing |
| `README-testing-guideline-supplemental.md`| Explanation of these supplemental files and how to use them |

---

## 📌 Folder Purpose

- Standardize testing documentation
- Improve clarity and traceability of QA efforts
- Support consistent onboarding and iteration planning
- Enable reuse and automation of regression testing sets

---

## ✅ Usage

1. Copy relevant templates for a new testing cycle (e.g., `business-tests-YYYYMMDD.md`)
2. Execute and document tests using structured templates
3. Track test coverage and changes using the mapping
4. Review summary and prioritize issues with AI assistant help
5. Archive outputs with date-specific filenames

---

## 🛠️ Related Tools (optional)

- `run_regression.sh` – script to execute regression tests
- `generate_regression_list.py` – script to build test subsets from mapping

> Note: These scripts are not included by default but can be added as optional utilities.

---

## 🔐 Versioning

Each test cycle should use its own set of dated files to maintain full traceability. Never overwrite previous reports.

---

Happy testing! ✅