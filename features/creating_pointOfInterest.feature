Feature: Creating pointOfInterests
  In order to have pointOfInterests
  As a user
  I want to create them easily

  Background:
    Given I am on the homepage
    When I follow "New Point of Interest"


  Scenario: Creating a PointOfInterest
  And I fill in "Name" with "Plaza 25 de Mayo"
  And I press "Create Point of interest"
  Then I should see "Point of Interest has been created."
  And I should be on the point_of_interest page for "Plaza 25 de Mayo"
  And I should see "Plaza 25 de Mayo - Point of Interest - San Juan AR"

  Scenario: Creating a PointOfInterest without a name
    And I press "Create Point of interest"
    Then I should see "Name can't be blank"
