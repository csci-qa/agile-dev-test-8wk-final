Feature: Search site
  As a student
  I want to search CSCC's home page
  So that I can learn more about a course
  
Scenario: Search for CSCI 2994
  Given I am on the CSCC home page
  When I enter csci 2994 in the search field
  Then more than one result is returned

Scenario: Finding the first result
  When the results are displayed
  Then the first result should be CSCI-2994 - CSCI Current Topics

Scenario: Viewing the prerequisites
  Given I am on the CSCI-2994 - CSCI Current Topics Page
  When I read the prerequisites
  Then the prerequisites state none

Scenario: Using textbook link
  Given I am on the CSCI-2994 - CSCI Current Topics Page
  When I click the link textbook 
  Then I am directed to the book store page

