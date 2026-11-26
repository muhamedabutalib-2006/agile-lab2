Feature: Patient nurse-call alert
  As a nurse
  I want to receive alerts when patients request assistance
  So that I can respond promptly

  Scenario: Online patient call notifies the assigned nurse
    Given the nurse-call unit for room "R101" is online
    And room "R101" has nurse "N12" assigned
    When the patient presses the call button in room "R101"
    Then one active call is recorded for room "R101"
    And nurse "N12" receives a call alert for room "R101"

  Scenario: Call is retained while the unit is offline
    Given the nurse-call unit for room "R101" is offline
    When the patient presses the call button in room "R101"
    Then the call is stored locally as pending delivery
    And the unit indicates that the call is pending
    When the nurse-call unit reconnects
    Then the pending call is synchronized
    And the assigned nurse receives the call alert

  Scenario: Repeated press does not create duplicate active calls
    Given room "R101" already has an active nurse call
    When the patient presses the call button in room "R101" again
    Then room "R101" still has exactly one active call
