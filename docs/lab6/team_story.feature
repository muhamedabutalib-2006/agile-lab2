Feature: Room-specific nurse call alerts
  As a nurse
  I want to receive notifications that identify the calling room
  So that I can respond at the correct location

  Scenario: Nurse receives an identified alert
    Given a patient call is created for configured room "R101"
    When the alert reaches the nurse station
    Then the notification displays room identifier "R101"
    And the notification shows the active-call state

  Scenario: Unknown room is not misidentified
    Given a call arrives with no valid room mapping
    When the nurse station processes the event
    Then the call is flagged as unassigned
    And no incorrect room identifier is displayed

  Scenario: Alerts from two rooms remain correctly identified
    Given patient calls are created for configured rooms "R101" and "R102"
    When both alerts reach the nurse station
    Then one alert identifies room "R101"
    And the other alert identifies room "R102"
