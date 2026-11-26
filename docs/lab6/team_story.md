# Part D — Three Gherkin scenarios for a team-project story

**Backlog story: NCS-05 — Receive a room-specific call alert**

As a nurse, I want to receive a notification that identifies the calling room so that I can respond at the correct location.

## Scenarios

1. **Happy path:** A patient call is created for a configured room. The nurse station receives the alert with the correct room identifier and active-call state.
2. **Error path:** A call arrives without a valid room mapping. The nurse station flags it as unassigned and does not display an incorrect room identifier.
3. **Edge case:** Calls from two configured rooms arrive. Each notification retains its correct room identifier so the nurse can distinguish the locations.

See `team_story.feature` for the Given–When–Then scenarios. Confirm the acceptance criteria with the team.
