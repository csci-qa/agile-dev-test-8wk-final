Feature: Rubular

as a user
I want to enter information
so I can find the match groups

Scenario: finding match groups
Given I am on rubular.com
When I enter the regexp and the test string
Then I will find the match groups 