# 📘 Testing Specification – Python Project Templates

This document outlines the standardized structure for business-level testing used in the Python Project Templates project.

---

## ✅ Test Documentation File Types

### 1. `business-tests-YYYYMMDD.md`

Plan for all high-level test cases.

Each test block should contain:
```markdown
### CLI-001 Generate CLI project
- **Type**: functional
- **Command**: ./init_project.sh --template cli-app --name my_cli
- **Expected result**: Project directory is created with initial files
- **Acceptance criteria**: CLI project is created without errors; files `main.py`, `requirements.txt`, and `.vscode/` exist
```

**Required fields:**
- **Test ID**: Unique identifier (e.g., CLI-001, API-003)
- **Type**: functional, integration, documentation, negative
- **Command**: command to execute
- **Expected result**: summary of what the output should be
- **Acceptance criteria**: clear success criteria

---

### 2. `test-execution-report-YYYYMMDD.md`

Used to record the result of executing each test.

```markdown
### CLI-001 Generate CLI project
- **Command**: ./init_project.sh ...
- **Result**: ✅ / ❌ / ⚠️ / ❓
- **Console output**: ...
- **Comments**: ...
```

Include a metadata block at the top:
```markdown
## Metadata
- Tester: Full Name
- Test Date: YYYY-MM-DD
- OS: Linux/Windows/macOS
- Python Version: 3.12.x
- Test Type: manual / automated / semi-automated
```

---

### 3. `tester-notes-YYYYMMDD.md`

Informal document used by testers to log observations, proposed changes, and questions.

---

### 4. `tests-mapping-YYYYMMDD.md`

Maps test cases to:
- Functionality or file they test
- Date introduced
- Whether the test is considered for regression testing

This helps track coverage and supports impact analysis during changes.

---

## 🏷️ Tags and Classifications

| Tag               | Purpose                                     |
|------------------|---------------------------------------------|
| `type:functional` | Tests core application behavior             |
| `type:integration`| Tests multiple components working together  |
| `type:doc`        | Validates documentation presence or accuracy|
| `type:negative`   | Tests invalid usage or error handling       |
| `type:idea`       | Proposed or experimental feature            |
| `status:ready`    | Ready to be implemented or reviewed         |
| `status:split`    | Should be broken into smaller tasks         |
| `status:later`    | Backlog / not urgent                        |

---

## 🧩 Outputs of the Process

| File                                  | Purpose                                       |
|---------------------------------------|-----------------------------------------------|
| `business-tests-YYYYMMDD.md`          | Full test plan                                |
| `test-execution-report-YYYYMMDD.md`   | Results of test execution                     |
| `tester-notes-YYYYMMDD.md`            | Tester comments, insights, issues             |
| `tests-mapping-YYYYMMDD.md`           | Link between tests and project components     |
| `todo-issues-YYYYMMDD.md`             | List of actionable improvements or bugs       |
| `todo-issues-YYYYMMDD-priorytety-opisane.md` | Prioritized and tagged issues         |
| `issues-backlog-YYYYMMDD.md`          | Optional or low-priority items                |

---

## 🔁 Versioning and Iteration

- Always preserve `business-tests-YYYYMMDD.md` per testing cycle
- Never overwrite old reports — use new dated files for each session
- Use templates from `docs/testing-guideline/` to start new cycles

---

## ✅ Best Practices

- Always define acceptance criteria before running tests
- Treat “Expected result” as functional intent, and “Acceptance criteria” as binary condition
- Use the `tester-notes.md` file for everything not covered by the formal reports