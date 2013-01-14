Feature: Editing opinions
  In order to alter opinion information
  As a user
  I want a form to edit the opinions

  Background:
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
    And that pointOfInterest has an opinion:
      |title | description |
      | Limpia!| La limpieza se mantiene bastante bien! |
  Given I am on the homepage
  When I follow "Plaza 25 de Mayo"
  And I follow "Limpia!"
  When I follow "Edit Opinion"

  Scenario: Updating an opinion
    When I fill in "Title" with "Limpia y con seguridad!"
    And I press "Update Opinion"
    Then I should see "Opinion has been updated."
    And I should see "Limpia y con seguridad!" within "#opinion h2"
    But I should not see "Make it shiny!"

  Scenario: Updating an opinion with invalid information
    When I fill in "Title" with ""
    And I press "Update Opinion"
    Then I should see "Opinion has not been updated."