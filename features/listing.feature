Feature: Listing
  As a user
  I want to perform searches
  So that I can verify course information
  
  Scenario: 
	Given I am on the CSCC homepage
	When I search for "csci 2994"
	Then I recieve multiple results
  
  Scenario: 
	Given I am on the CSCC homepage
	When I search for "csci 2994"
	Then First result is titled "CSCI-2994 - CSCI Current Topics"
    
  Scenario: 
	Given I am on the CSCC homepage
	When I perform a Subject Search in Autumn Semester 2015
	Then Two sections of CSCI 2994 should be displayed
    
  Scenario: 
	Given I am on the CSCC homepage
	When I perform a search
	Then I see search results
    
  Scenario: 
	Given I am on the CSCC homepage
	When I search for "csci 2994"
	Then each result links to the definition of a Blended course
    
  Scenario: 
	Given I am on the CSCC homepage
	When I search for "csci 2994"
	Then each resulting Course Name links to the Computer Science department course log