# Task A1 — Coverage result and one-sentence answer

Run from the repository root: `bash docs/lab6/run_checks.sh`

The registration-only coverage run executes the tests in `tests/test_registration.py`. The additional test `test_drop_unregistered_course_raises_error` covers the error branch in `Student.drop`.

## Verified coverage report

Name              Stmts   Miss  Cover   Missing
registration.py      20      0   100%

**Does 100% coverage prove the code is correct?** No; it only proves that the measured lines were executed, not that the tests assert every required behaviour or that the requirements themselves are correct.

The real text report is saved as `evidence/coverage.txt`. The handout also requests a genuine screenshot of the terminal report, saved as `evidence/coverage-screenshot.png`.
