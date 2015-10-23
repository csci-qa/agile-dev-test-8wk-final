Feature: Use Rubular
  As a Ruby writer
  I want to use Rubular
  So that I can edit and test expressions
  
Scenario: Enter an expression
  Given I am on the Rubular home page
  When I enter  a regular expression
  Then I can test the expression
  
Scenario: Test an expression
  Given I have an expression
  When I enter the test string
  Then a match result should appear

Scenario: Confirm tested expression
  Given I have tested an expression
  When I read the match result
  Then I can compare the result to the expected value

Scenario: Return match groups
  Given I have a tested expression
  When I read the match groups
  Then the amount of the match groups is three
  
Scenario: Format match groups
  Given I have three match groups
  When I list the match groups
  Then each group starts on a new line with a new number

