# 📘 Testing Guide – Python Project Templates

This guide introduces the testing workflow, documentation files, and naming conventions used in the Python Project Templates project. It is intended for new QA team members and contributors.

---

## 🔁 Step-by-Step Testing Workflow

### 1. Prepare the test plan
- Use the template: `business-tests-template.md`
- Adjust or add test cases for the current release
- Fill in: ID, type, command, expected result, and acceptance criteria

### 2. Execute test cases
- Run commands listed in `business-tests.md`
- Record the outcome in `test-execution-report-YYYYMMDD.md`
- Log the result, console output, and any observations

### 3. Record additional notes
- Use `tester-notes-YYYYMMDD.md` to capture informal insights, bugs, and suggestions

### 4. Generate a test summary
- Submit the test report to the AI Assistant (ChatGPT)
- Request analysis → generates `summary-of-tests-YYYYMMDD.md`

### 5. Review and prioritize issues
- Extract issues into `todo-issues-YYYYMMDD.md`
- Apply priorities (P1–P4), tags, and source info
- Final list saved as: `todo-issues-YYYYMMDD-priorytety-opisane.md`

### 6. Archive or split backlog tasks
- Low-priority or postponed items go into `issues-backlog-YYYYMMDD.md`

---

## 📁 Core Testing Files

| File                                      | Purpose                                  |
|-------------------------------------------|------------------------------------------|
| `business-tests-YYYYMMDD.md`              | Test plan with high-level scenarios      |
| `test-execution-report-YYYYMMDD.md`       | Results of test execution                |
| `tester-notes-YYYYMMDD.md`                | Informal tester observations             |
| `summary-of-tests-YYYYMMDD.md`            | AI-generated test outcome analysis       |
| `todo-issues-YYYYMMDD.md`                 | List of discovered tasks/issues          |
| `todo-issues-YYYYMMDD-priorytety-opisane.md` | Tagged and prioritized issues         |
| `issues-backlog-YYYYMMDD.md`              | Lower priority or postponed items        |
| `tests-mapping-YYYYMMDD.md`               | Links tests to code or features          |
| `regression-tests-YYYYMMDD.md`            | Reduced set of regression test cases     |

---

## 🆔 Test ID Conventions

Test IDs follow the pattern `PREFIX-NNN`:

| Prefix | Area         | Example     |
|--------|--------------|-------------|
| CLI    | Command Line | CLI-001     |
| API    | Web Server   | API-002     |
| GUI    | Desktop App  | GUI-001     |
| ENV    | Environment  | ENV-001     |
| DOC    | Documentation| DOC-001     |
| CUS    | Custom Template | CUS-001 |

---

## 🔗 Mapping and Relationships

- Each test in `business-tests.md` can represent one or more concrete test scenarios.
- Detailed implementation traces are defined in `tests-mapping.md`.
- Regression test sets are extracted from mapping entries with `Regression: true`.

---

## 🧠 Glossary

| Term                  | Meaning |
|-----------------------|---------|
| **Business Test**     | High-level test reflecting real use cases |
| **Regression Test**   | Re-run of previous test to ensure no regressions |
| **Acceptance Criteria** | Must-pass conditions for the test |
| **Expected Result**   | Description of what should happen |
| **Tester Notes**      | Free-form file for insights and remarks |
| **Backlog**           | List of non-urgent or split-off tasks |
| **Tag**               | Descriptive label for an issue or test (e.g. `type:bug`) |

---

## ✅ Best Practices

- Always refer to templates in `docs/testing-guideline/`
- Use versioned files per date to preserve history
- Keep mapping file (`tests-mapping.md`) updated with each change