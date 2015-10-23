Feature: Search
  As a student
  I want to search CSCC home page
  So that I can learn about a course

Scenario: Search for CSCI 2994
  Given I am on the CSCC homepage
  When I enter csci 2994 in the search field
  Then more than one result is returned

Scenario: Finding the First Result
  Given I have searched for csci 2994
  When the results are displayed
  Then the first result should be CSCI-2994 - CSCI Current Topics

Scenario: Viewing the Prerequisites
  Given I am on the CSCI-2994 - CSCI Current Topics page
  When I read the prerequisites
  Then the prerequisites should be None

Scenario: Using Textbook Link
  Given I am on the CSCI-2994 - CSCI Current Topics page
  When I click the textbook link
  Then I am directed to the book store page