Feature: Find schedule
  As a student
  I want to find the special topics course
  so that I can learn Cucumber

  Scenario: Searching for "csci 2994" from CSCC's homepage 
    When I search for CSCI 2994 from the CSCC homepage
    Then there are multiple listings
	
  Scenario: Checking for results
    When I check the first search result
	Then it is listed as CSCI 2994 - Current topics
	
  Scenario: Checking for prerequisites
    When I look for prerequisites
	Then I find that it lists None
	
  Scenario: Checking for link to the bookstore
    When I look under the Textbooks heading
	Then I find a link to the bookstore

	
	
	