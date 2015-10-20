Feature: Searching Rubular website
I'm a student and I have an assignment to search on the rubular website
So that I can see how regex works

Scenario: Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "jdenen@cscc.edu"
Given I am on the Rubular site
When 
Then 

Scenario: Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "jdenen@cscc.edu"
Given I am on the Rubular site
When 
Then 

Scenario: Should return a match result of "jdenen@cscc.edu"
Given I am on the Rubular site
When 
Then 

Scenario: Should return three match groups:
Given I am on the Rubular site
When 
Then jdenen should be returned
Then cscc should be returned
Then edu should be returned

Scenario: Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "jdenen@cscc.edu"
Given I am on the Rubular site
When 
Then 
