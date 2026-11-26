# SET 312 — Assignment 5 / Lab 6 submission

This folder follows the Moodle checklist shown for Assignment 5 and the uploaded `Lab 6: TDD, BDD & Refactoring` handout.

## Folder map

- `../../lab6/registration.py` — course registration module.
- `../../lab6/tests/test_registration.py` — TDD tests, including the missing-course branch needed for 100% statement coverage.
- `../../lab6/features/registration.feature` — BDD feature with the required drop scenario.
- `../../lab6/features/steps/registration_steps.py` — Behave steps, including the drop step.
- `../../lab6/legacy_invoice.py` — original legacy invoice snapshot; leave unchanged.
- `../../lab6/invoice.py` — refactored policy-based invoice with `SiblingPolicy`.
- `../../lab6/tests/test_invoice_characterization.py` — characterization and SiblingPolicy tests.
- `smells.md` — Task C1 table.
- `coverage_answer.md` — Task A1 coverage explanation.
- `team_story.feature` and `team_story.md` — Part D story and three scenarios (confirm against the actual team backlog).
- `tdd_commit_plan.md` — actual Git-history requirements and suggested cycle boundaries.

## Setup (Linux / Arch / Fish)

Run these commands from the extracted submission root:

```fish
cd lab6
python -m venv .venv
source .venv/bin/activate.fish
python -m pip install -r requirements.txt
```

## Run tests and coverage

From `lab6/`:

```bash
python -m pytest -q
python -m coverage erase
python -m coverage run --source=registration -m pytest -q tests/test_registration.py
python -m coverage report -m registration.py
python -m behave
```

For 100% statement coverage, the report for `registration.py` should show `100%` and no missing lines. For BDD, all scenarios should pass, including `Drop a registered course`.

Behave was successfully run in the local virtual environment: 1 feature, 7 scenarios, and 28 steps passed.

## Verified evidence

- `evidence/pytest.txt` — complete pytest result: 10 passed.
- `evidence/coverage.txt` — registration coverage: 100%.
- `evidence/behave.txt` — Behave result: 7 scenarios and 28 steps passed.
- `evidence/git-log.txt` — actual branch history.

The handout also requests a genuine screenshot of the terminal coverage report. Save it as `evidence/coverage-screenshot.png`.

Confirm the Part D story and scenarios with the team before submission.
