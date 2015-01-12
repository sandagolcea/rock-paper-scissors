Feature: Starting the game
  In order to play rock paper scissors
  As a normal player
  I want to start a new game

  Scenario: Welcome page
    Given I am on the homepage
    Then I should see "Hello, what's your name?"

  Scenario: Registering
    Given I am on the homepage
    When I fill in "player" with "Sanda"
    And I press "Submit"
    Then I should see "Hello Sanda, would you like to play a game?"