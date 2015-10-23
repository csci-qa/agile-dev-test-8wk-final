Feature: Listing A Course
  As a student
  I want to search a course
  So that I can find out information about it

  Scenario: Searching for CSCI 2994
  Given I am on the CSCC homepage
  When I search for csci 2994
  Then more than one result is returned

  Scenario: Finding the First Result
  Given I have searched for csci 2994
  When the results are displayed
  Then the first result should be titled CSCI-2994 - CSCI Current Topics

  Scenario: Viewing the Prerequisites
  Given I am on the CSCI-2994 - CSCI Current Topics page
  Then the prerequisites should be None

  Scenario: Using the Book Store Link
  Given I am on the CSCI-2994 - CSCI Current Topics page
  When I click the book store link
  Then I should be directed to the book store page