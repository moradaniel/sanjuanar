Feature: Creating Opinions
  In order to create opinions for pointOfInterests
  As a user
  I want to be able to select a pointOfInterest and do that

  Background:
    Given there is a pointOfInterest called "Plaza 25 de Mayo"
    And I am on the homepage
    When I follow "Plaza 25 de Mayo"
    And I follow "New Opinion"

  Scenario: Creating an opinion
    When I fill in "Title" with "I like it"
    And I fill in "Description" with "It is very awesome!"
    And I press "Create Opinion"
    Then I should see "Opinion has been created."

  Scenario: Creating an opinion without valid attributes fails
    When I press "Create Opinion"
    Then I should see "Opinion has not been created."
    And I should see "Title can't be blank"
    And I should see "Description can't be blank"

  Scenario: Description must be longer than 10 characters
    When I fill in "Title" with "I do not like it"
    And I fill in "Description" with "it sucks"
    And I press "Create Opinion"
    Then I should see "Opinion has not been created."
    And I should see "Description is too short"