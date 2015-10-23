Feature: Course Listing
  As a visitor to CSCC home page
  I want to view course listing
  So that I can know what I'm signing up for

  Scenario: Searching for csci 2994
    Given I am on the cscc home page
    When I enter csci 2994 into search field
    Then I should see more than one result

  Scenario: Viewing search results
    Given I am on the search result
    When the page loads
    Then the first result should be titled CSCI-2994 - CSCI Current Topics

  Scenario: Viewing the course
    Given I am on the CSCI-2994 page
    When the CSCI-2994 page loads
    Then the prerequisites should show None
    And I should see a link for the bookstore under Textbooks
