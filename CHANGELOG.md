## [v0.2.0] - 2025-07-17

### Added
- Introduced complete testing guideline under `docs/testing-guideline/`
- Added reusable templates: business tests, test execution report, tester notes, mapping, regression checklist
- Added templates for issue tracking: todo, priority list, backlog
- Added testing process guide (`testing-guide.md`) and technical specification (`testing-specification.md`)
- Included naming convention file for consistent documentation structure

### Documentation
- Supplemental README files added to describe usage of templates and workflow

#qa-docs-v1

## [v0.1.1] - 2025-07-16

### Documentation
- Simplified main `README.md` and moved detailed info to `docs/`
- Created `init_project.md`, `overview.md`, `setup_env.md`, `templates.md`, `usage_examples.md`
- Added guide on how to add custom templates to `templates.md`

---

## [v0.1.0] - 2025-07-01

### Added
- Initial version of `init_project.sh` with basic project creation and interactive mode
- Print functions (`print_help`, `print_logo`); replaced `cp` with `rsync` excluding `venv`
- `.gitignore` updated to exclude `projects/` folder
- Initial version of `setup_env.sh` with argument parsing and environment setup

### Documentation
- Added initial `README.md` and `README_pl.md` with project overview and usage
- Documented `setup_env.sh` in `docs/setup_env.md`
- Added CONTRIBUTING.md with GPG signing and bug reporting guidelines
- Created empty placeholder files for future documentation expansion
