Feature: Verify Email address
  As a student
  I want to make sure the instructor has a valid email address 
  so I can ask questions 

  Scenario: Entering a regex expression 
    I enter a regexp for an email address and a test string of jdenen@cscc.edu
    Then I should return a match result of "jdenen@cscc.edu"
	
  Scenario: Return match result of jdenen@cscc.edu
	I enter a regexp for an email address and a test string of jdenen@cscc.edu
	Then it should return three match groups

  Scenario: Return match result on a new line
	I enter a regexp for an email address and a test string of jdenen@cscc.edu
	Then each match group should be formatted onto a new line
	
  Scenario: Return match results should have index number
	I enter a regexp for an email address and a test string of jdenen@cscc.edu
    Then each match group should be preceded by an index number
    