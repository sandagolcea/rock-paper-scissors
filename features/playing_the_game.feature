
Feature: Playing the game
  In order to win rock paper scissors
  As a normal player
  I want to actually play the game

  Scenario: I should see rock paper scissors
    Given I am on the homepage
    When I fill in "player" with "Sanda"
    And I press "Submit"
    Then I should see the image "rock.jpg"
    And I should see the image "paper.jpg"
    And I should see the image "scissors.jpg"

Scenario: I should see the winner
  Given I am on the gamepage
  # TODO: change choice from hard coded into link
  # by default I've made it choose rock
  # http://localhost:9292/game?choice=rock
  Then I should see "Winner:"


Scenario: I should see computer's choice
  Given I am on the gamepage
  Then I should see "Computer chose"