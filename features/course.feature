Feature: CSCI 2994 Search

As a Columbus State student
I want to search for CSCI 2994 from the home page
So that I can find out about the prerequisites and textbooks

Scenario: Searching for CSCI 2994
Given I am on the Columbus State home page
When I search for CSCI 2994
Then I should get more than 1 result
And the first result should be titled CSCI-2994 - CSCI Current Topics

Scenario: Visiting the CSCI-2994 - CSCI Current Topics link
When I have clicked the CSCI-2994 - CSCI Current Topics link from the search results
Then I should see that the course has no prerequisites
And I should see a link to the bookstore under Textbooks