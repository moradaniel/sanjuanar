Feature: Viewing opinions
  In order to view the opinions for a pointOfInterest
  As a user
  I want to see them on that pointOfInterest's page

  Background:
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
    And that pointOfInterest has an opinion:
      | title | description |
      | Limpia!| La limpieza se mantiene bastante bien! |
    And there is a pointOfInterest called "Casa de Sarmiento"
    And that pointOfInterest has an opinion:
      | title | description |
      | Bien Iluminada| Es agradable la iluminacion. |
  And I am on the homepage

  Scenario: Viewing opinions for a given pointOfInterest
    When I follow "Plaza 25 de Mayo"
    Then I should see "Limpia!"
    And I should not see "Bien Iluminada"
    When I follow "Limpia!"
    Then I should see "Limpia!" within "#opinion h2"
    And I should see "La limpieza se mantiene bastante bien!"
    When I follow "SanJuanAR"
    And I follow "Casa de Sarmiento"
    Then I should see "Bien Iluminada"
    And I should not see "Limpia!"
    When I follow "Bien Iluminada"
    Then I should see "Bien Iluminada" within "#opinion h2"
    And I should see "Es agradable la iluminacion."