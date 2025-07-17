# 📂 Supplemental Testing Templates – README

This document describes the purpose of the additional templates used to support testing, issue tracking, and regression cycles within the Python Project Templates project.

These files complement the core testing templates and help manage backlog, prioritization, and ongoing quality assurance.

---

## 📄 Included Files

### `todo-issues-template.md`
Basic TODO checklist for logging issues found during testing.

- Unprioritized
- Includes source of issue and reason
- Suitable as a first draft of issue collection

---

### `todo-issues-priorytety-template.md`
Enhanced TODO list including:

- Priority labels (P1–P4)
- Tags for `type:*` and `status:*`
- Issue origin and justification

Use this file to prepare a refined list of tasks to submit to development or maintainers.

---

### `issues-backlog-template.md`
For tracking lower-priority, deferred, or split-off issues.

- Useful for grooming backlog items
- Helps avoid forgetting smaller but valuable improvements

---

### `regression-tests-template.md`
Checklist of selected tests for regression validation.

- Based on `tests-mapping.md` and `Regression: true` flags
- Run periodically after major changes to catch regressions early
- Mark each test completed before releasing or merging updates

---

## 🧭 Usage Workflow

1. Start with `todo-issues-template.md` after testing
2. Promote validated items to `todo-issues-priorytety-template.md`
3. Move less urgent tasks to `issues-backlog-template.md`
4. Before a release, generate/update `regression-tests.md`

All templates should be stored in `docs/testing-guideline/`.

---

For more information, refer to `testing-guide.md` and `testing-specification.md`.