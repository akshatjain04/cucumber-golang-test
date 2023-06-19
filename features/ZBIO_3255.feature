Feature: Day Identifier

  Scenario: Identify Sunday as the current day
    Given Today's date is set to Sunday
    When the system identifies the current day
    Then the system should display "Sunday"

  Scenario: Identify that it's not Friday yet on Sunday
    Given Today's date is set to Sunday
    When the system is asked if it's Friday yet
    Then the system should display "Nope"

  Scenario: Identify that it's not Friday yet on any other day of the week
    Given Today's date is set to any day except Friday
    When the system is asked if it's Friday yet
    Then the system should display "Nope"

  Scenario: Identify that it's Friday on Friday
    Given Today's date is set to Friday
    When the system is asked if it's Friday yet
    Then the system should display "Yes"