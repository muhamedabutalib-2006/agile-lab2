# Task C1 — Legacy invoice code smells

The findings below refer to the supplied `legacy_invoice.py` before refactoring.

| Smell | Where it appears | Principle / impact |
|---|---|---|
| Long `if` / `elif` chain for student kind | Inside the course loop and again after it | **OCP:** adding another fee type requires editing the existing calculation function in multiple places. |
| Magic numbers | `1200`, `0.5`, `2000`, and `5000` | Makes fee rules hard to understand and change consistently; named constants communicate meaning. |
| Multiple responsibilities in one function | `make_invoice` calculates fees, formats the invoice, writes a file, and prints output | **SRP:** calculation, presentation, and persistence have different reasons to change. |
| Direct file handling inside the business function | `open`, `write`, `close` are embedded in `make_invoice` | **DIP / testability:** the high-level invoice logic depends directly on disk I/O, making isolated tests harder. A context manager is also safer for closing the file. |
| Repeated per-course branching | The same student-kind test runs for every course | Duplicated decision logic increases complexity; calculate from total credit hours through a policy object instead. |

## Refactoring applied

- Fee amounts are named constants.
- `RegularPolicy`, `ScholarshipPolicy`, `SiblingPolicy`, and `InternationalPolicy` each own one fee rule.
- `POLICIES` maps a kind to its policy, so adding a type requires a class and mapping entry rather than another branch in `make_invoice`.
- `FileWriter` owns file persistence and uses `with open(...)`.
- `make_invoice` calculates and delegates writing through an injected writer; it no longer prints.
- `SiblingPolicy` applies 25% off the regular fee and is covered by a test.
