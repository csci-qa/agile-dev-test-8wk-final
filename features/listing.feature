Feature: Course listing

  as a user 
  I want to find a course 
  so I can prepare myself for it
  
  Scenario: Search for a result 
  Given I am on the homepage
  When I am searching for a result
  Then more than one result will be found
  
  Scenario: finding first result
  When I am on the search page
  Then I will find the first result
  
  Scenario: Searching for prerequisites 
  Given I am on CSCI-2994 Current Topics page
  Then I can see there are no prerequisites 
  
  Scenario: look for a working bookstore link
  Given I am on CSCI-2994 Current Topics page
  When I click on the bookstore link 
  Then I am on the bookstore website