Feature: Rubular
As a student
I want to test a string 
So that I can learn about regular expression

Scenario: Entering a text
  Given I am on the rubular homepage
  When I enter a regular expression
  Then I can test the expression

Scenario: Testing the expression
  Given I have an expression
  When I enter the test string 
  Then a match result should appear

Scenario: Confirming the expression
  Given I have tested the expression
  When I read the match result 
  Then I can compare the result to the expected value

Scenario: Return match groups
  Given I have a tested expression 
  When I read the match groups 
  Then I can compare the result to the expected value

Scenario:Formatting match groups
  Given I have three match groups
  When I list the match groups 
  Then each line starts with an index number