Feature: Deleting pointOfInterests
  In order to remove needless pointOfInterests
  As a project manager
  I want to make them disappear
  Scenario: Deleting a pointOfInterest
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
  And I am on the homepage
  When I follow "Plaza 25 de Mayo"
  And I follow "Delete Point of Interest"
  Then I should see "Point of Interest has been deleted."
  Then I should not see "Plaza 25 de Mayo"