# Task A1 — Coverage result and one-sentence answer

Run from the `lab6/` directory:

```bash
python -m coverage erase
python -m coverage run --source=registration -m pytest -q tests/test_registration.py
python -m coverage report -m registration.py
```

The additional test `test_drop_unregistered_course_raises_error` covers the error branch in `Student.drop`. `test_exactly_18_hours_is_allowed` also checks the 18-hour boundary.

**Does 100% coverage prove the code is correct?** No; it only proves that the measured lines were executed, not that the tests assert every required behaviour or that the requirements themselves are correct.

> Attach a screenshot of the real coverage report from your terminal here when submitting. The text report produced by the command is also saved as `evidence/coverage.txt` when you run `../docs/lab6/run_checks.sh` from this directory.
