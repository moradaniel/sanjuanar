Feature: Creating pointOfInterests
  In order to have pointOfInterests
  As a user
  I want to create them easily
  Scenario: Creating a PointOfInterestsss
  Given I am on the homepage
  When I follow "New Point of Interest"
  And I fill in "Name" with "TextMate2"
  And I press "Create Point of interest"
  Then I should see "Point of Interest has been created."