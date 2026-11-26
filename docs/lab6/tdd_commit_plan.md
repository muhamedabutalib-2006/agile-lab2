# Lab 6 — Verified Git history

The following commits were taken from the actual `assignment5-lab6` branch.

## Part A — Course registration TDD

| Commit | Recorded change |
|---|---|
| `a5d9220` | RED — add course registration test |
| `b86e517` | GREEN — implement basic course registration |
| `4583f8f` | RED — add 18-hour registration limit test |
| `3e139e5` | RED — assert RegistrationError for hour limit |
| `508fac6` | GREEN — enforce 18-hour registration limit |
| `e90252e` | RED — reject duplicate course registration |
| `92d68a4` | GREEN — prevent duplicate course registration |
| `f2c6a1d` | RED — add course drop test |
| `80967ff` | GREEN — implement course dropping |
| `de77926` | RED — reject dropping an unregistered course |
| `b7f4096` | GREEN — handle dropping unregistered courses |

## Part C — Invoice characterization and refactoring

| Commit | Recorded change |
|---|---|
| `6c42dbf` | Characterize legacy invoice behavior |
| `4f71975` | Replace invoice magic numbers with constants |
| `545d1fd` | Extract invoice fee policies |
| `d35e96a` | Introduce policy registry |
| `b4206f8` | RED — test injectable invoice writer |
| `071a15b` | GREEN — inject invoice file writer |
| `a0aa7e8` | RED — add sibling fee discount test |
| `f820974` | GREEN — add 25 percent sibling fee policy |

## BDD

| Commit | Recorded change |
|---|---|
| `6e5b884` | Add course registration BDD scenarios and step definitions |

The registration history shows tests committed before their corresponding implementation. The invoice work includes characterization tests, incremental refactoring, and test-first additions for writer injection and the sibling discount.

The complete real Git output is saved in `evidence/git-log.txt`.

To reproduce it from the repository root:

`git log --oneline --decorate --graph -30`
