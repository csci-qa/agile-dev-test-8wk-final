
@test
Feature: Searching CSCC website
I'm a student and want to search my school websit
So that I can get some education..lol

Scenario: Search for "csci 2994" from CSCC's homepage
Given I am on the cscc.edu page
When searching csci 2994 on CSCC homepage 
Then yield more than one result

 	