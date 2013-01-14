Feature: Deleting opinions
  In order to remove opinions
  As a user
  I want to press a button and make them disappear

  Background:
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
    And that pointOfInterest has an opinion:
      |title | description |
      | Limpia!| Limpia y con seguridad! |
  Given I am on the homepage
  When I follow "Plaza 25 de Mayo"
  And I follow "Limpia!"

  Scenario: Deleting an opinion
    When I follow "Delete Opinion"
    Then I should see "Opinion has been deleted."
    And I should be on the point_of_interest page for "Plaza 25 de Mayo"