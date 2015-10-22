Feature: Listing
  As a user
  I want to perform searches
  So that I can verify course information
  
  Scenario: 
	Given I am on the CSCC homepage
	When I perform a search
	Then I recieve multiple results
      And the first result is titled "CSCI-2994 - CSCI Current Topics"
      
  Scenario: 
	When I navigate to that class page
	Then the prerequisites are "none"
      And there is a a link to the bookstore under "Textbooks" for the course listing
    