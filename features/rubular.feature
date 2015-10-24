Feature: Rubular Regular Expression

  Scenario: Entring a regular expression in Rubular
    Given I am on the Rubular home page
    When I enter the regex (.*)@(.*)\.(.*)
    And I enter jdenen@cscc.edu
    Then the match result is jdenen@cscc.edu
    And returns three match groups on new lines with index