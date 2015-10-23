Feature: Rubular Page
  As a visitor to Rubular page
  I want to be able to enter text 
  So that I can see the matched results
  
  Scenario: Entering text into Rubular
  Given I have the rubular web page opened
  When I enter the text into text fields
  Then I should get a matched result
  And I should get three match groups
  And I should get three matches with numbers