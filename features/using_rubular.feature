Feature: Using Rubular
  As a user
  I want to enter in a test string of an email
  So that I can see the match groups

  Scenario: Entering a Regular Expression and Test String
  Given I am on rubular.com
  When I enter in the regular expression and test string
  Then I get three match groups on separate lines