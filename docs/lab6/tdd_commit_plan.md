# TDD commit and evidence checklist

The ZIP archive does not contain the team's `.git` repository. Do not present a generated or simulated log as team history. Perform the following Red → Green → Refactor steps on the actual team branch and capture `git log` from that repository.

Suggested cycle boundaries:

| Cycle | RED: commit failing test first | GREEN: commit minimal implementation | REFACTOR: commit cleanup after tests pass |
|---|---|---|---|
| Registration add | `test: cover registering a course` | `feat: record registered course hours` | `refactor: clarify registration state` |
| Credit-hour limit | `test: reject registrations above 18 hours` | `feat: enforce 18-hour limit` | `refactor: keep rejected registration atomic` |
| Duplicate / drop | `test: cover duplicate and drop rules` | `feat: enforce duplicate and drop rules` | `refactor: clarify registration errors` |
| Drop missing-course edge | `test: cover dropping an unregistered course` | `fix: reject dropping an unregistered course` | `refactor: simplify drop validation` |
| Sibling invoice policy | `test: add sibling fee characterization` | `feat: add 25 percent sibling policy` | `refactor: keep fee policy lookup unchanged` |

The final source tree in `lab6/` contains the completed implementation and tests. To prove the TDD sequence, the actual repository history must show the test-first commits preceding their implementation commits.

Capture evidence with:

```bash
git log --oneline --decorate --graph -20
```

Use the team's real branch name and authorship. Do not add a partner as co-author unless that person actually contributed and agrees.
