Feature: Searching Rubular website
I'm a student and I have an assignment to search on the rubular website
So that I can see how regex works

@testR
Scenario: Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "jdenen@cscc.edu"

Given I am on the Rubular site
When I enter a regexp and a test string
Then 1 jdenen 2 cscc 3 edu should be returned on seperate lines


