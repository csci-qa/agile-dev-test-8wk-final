
Feature: Searching CSCC website
I'm a student and want to search my school websit
So that I can get some education..lol

Scenario: Search for "csci 2994" from CSCC's homepage
Given I am on the cscc.edu page
When searching csci 2994 on CSCC homepage 
Then yield more than one result

Scenario: First result of search is titled "CSCI-2994 - CSCI Current Topics"
Given I am on the cscc.edu page
When searching csci 2994 on CSCC homepage to view first result 
Then it is titled CSCI-2994 - CSCI Current Topics

@test
Scenario: The course lists "None" for its prerequisites. 
Given I am on the cscc.edu page
When I click the link for csci 2994 from result page
Then the next page will list the prerequisites as none
 
Scenario: There's a link to the bookstore under Textbooks for the course listing.
Given I am on the cscc.edu page
When I click the link for csci 2994 from result page
Then the next page will list a link for Textbooks


