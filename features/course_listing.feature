Feature: Searching CSCI Website

  Scenario: Searching text from home page
  	Given I have a browser on the CSCI home page
  	When I enter csci 2994 into the search field
  	And I click the search button
  	Then I can see more than one search results
  	And the first result is titled CSCI-2994 - CSCI Current Topics

  Scenario: Selecting first link
  	Given I have selected the first search result
  	Then the course lists None for its prerequisites
  	And there is a link to the bookstore
  	

