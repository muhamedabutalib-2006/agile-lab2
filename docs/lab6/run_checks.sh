#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT/lab6"
mkdir -p "$ROOT/docs/lab6/evidence"

python -m pytest -q | tee "$ROOT/docs/lab6/evidence/pytest.txt"
python -m coverage erase
python -m coverage run --source=registration -m pytest -q tests/test_registration.py | tee "$ROOT/docs/lab6/evidence/coverage-pytest.txt"
python -m coverage report -m registration.py | tee "$ROOT/docs/lab6/evidence/coverage.txt"
python -m behave | tee "$ROOT/docs/lab6/evidence/behave.txt"
