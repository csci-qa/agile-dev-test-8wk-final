Feature: Rubular
  As a user
  I want to utilize rubular
  So that I can know more about my code
  
  Scenario: 
	Given I am on the Rubular page
	When I enter text in the regexp textbox
	Then the regexp textbox acccepts the text
    
  Scenario: 
	Given I am on the Rubular page
	When I enter text in the test string textbox
	Then the test string textbox acccepts the text
    
  Scenario: 
	Given I am on the Rubular page
	When I enter the desired values
	Then the page displays the desired result
      And the page should display the desired match groups
      And the match groups each have a new line
      And the match groups should have an index number