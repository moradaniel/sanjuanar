Feature: Editing pointOfInterests
  In order to update pointOfInterest information
  As a user
  I want to be able to do that through an interface

  Background:
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
    And I am on the homepage
    When I follow "Plaza 25 de Mayo"
    And I follow "Edit Point of Interest"

  Scenario: Updating a pointOfInterest
  And I fill in "Name" with "Plaza 25 de Mayo - Beta"
  And I press "Update Point of interest"
  Then I should see "Point of Interest has been updated."
  Then I should be on the point_of_interest page for "Plaza 25 de Mayo - Beta"

  Scenario: Updating a pointOfInterest with blank data should not be allowed
    And I fill in "Name" with ""
    And I press "Update Point of interest"
    Then I should see "Point of Interest has not been updated."
