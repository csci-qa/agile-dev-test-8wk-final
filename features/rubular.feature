Feature: Use Rubular to parse strings

As a web user
I want to be able to parse strings using regular expressions
So that I can get access to the individual components


Scenario: Should be able to use a regular expression to parse an email address
Given I am on the Rubular home page
When I enter a regexp and a test string
Then it should return a match result of jdenen@cscc.edu
And it should return 3 match groups each preceded by an index
And each match group should be formatted on a new line