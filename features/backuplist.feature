Feature: List of existing backups

  As user
  I should be able to see the list of created backups

  Scenario: main page with list of backups
    Given I'm on main page
    When I see the main page
    Then I should see the Title for created backups
      And I should see the List of created backups
