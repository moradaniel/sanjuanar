Feature: Viewing pointOfInterests
  In order to assign pointOfInterestType to a pointOfInterest
  As a user
  I want to be able to see a list of available pointOfInterests

  Scenario: Listing all pointOfInterests
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
  And I am on the homepage
  When I follow "Plaza 25 de Mayo"
  Then I should be on the point_of_interest page for "Plaza 25 de Mayo"