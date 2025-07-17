# 📌 CHANGES.md – Functional Changes with Test Mapping

Tracks relevant functional and structural changes, with references to related test cases where applicable.

---

## [v0.2.0] – 2025-07-17

### Added
- Introduced `--python-path` option in `setup_env.sh` [TEST: ENV-002]
- Enabled running FastAPI project with `uvicorn` [TEST: API-003]
- Added support for copying and running custom templates [TEST: CUS-001]
- Reinstall functionality in `setup_env.sh --reinstall` [TEST: ENV-001]
- Created full testing guideline and QA documentation [NO DIRECT TEST]

### Updated
- Refactored README into structured docs in `docs/`
- Standardized file naming to kebab-case

---

## [v0.1.1] – 2025-07-16

### Documentation
- Simplified `README.md`, moved detailed usage to `docs/`
- Created `overview.md`, `usage_examples.md`, and `templates.md`
- Documented adding custom templates to project

---

## [v0.1.0] – 2025-07-01

### Added
- Created `init_project.sh` for CLI/GUI/API project generation [TEST: CLI-001, API-001, GUI-001]
- Added `setup_env.sh` for environment creation [TEST: CLI-002, ENV-001]
- Added CLI execution test via `main.py` [TEST: CLI-003]

---

## Notes

- Use `[TEST: ID]` to link a test case defined in `business-tests-template.md`
- Use this file as input to generate regression test plans or trigger QA automation