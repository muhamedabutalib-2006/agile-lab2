# Part D — Three Gherkin scenarios for a team-project story

**Working story (confirm against the team's Sprint 0 / Sprint 1 backlog):**

As a nurse, I want to receive an alert when a patient presses the nurse-call button so that I can respond to the patient promptly.

The following draft assumes the team's project is the Nurse Call System discussed in earlier project planning. Confirm that this exact story exists in the team backlog and adjust its wording/rules with the Product Owner before submission.

1. **Happy path:** the call unit is online; a patient presses the call button; the system records an active call for that room and notifies the assigned nurse.
2. **Error path:** the call unit loses Wi-Fi before the patient presses the button; the event is stored locally and the unit indicates that the call is pending delivery; once the connection returns, the pending call is synchronized and the nurse is notified.
3. **Edge case:** a patient presses the button again while a call for the same room is already active; the system keeps one active call for that room rather than creating duplicate active calls.

See `team_story.feature` for the Gherkin form. These are acceptance-criteria proposals, not evidence that the team has approved them.
