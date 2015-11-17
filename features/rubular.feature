Feature: Rubular
	As a student, I want to make sure the instructor has a valid email address, so I can ask questions
	
	Scenario:Should be able to enter a regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "fry975@gmail.com"
		When I enter the regexp of "(.\*)@(.\*)\\.(.*)" and a test string of "fry975@gmail.com"
		Then I get a match result of "fry975@gmail.com"
		
	Scenario:The match results should be in three groups
		When I enter the regexp and "fry975@gmail.com"
		Then I get three groups fry975, gmail, com
	
	Scenario:The match groups should be formatted on three lines
		When I get the match results in three groups
		Then they should be formatted onto a new line
	
	Scenario:The match groups should have an index number in front of them
		When I get the match results from rubular
		Then they should be preceaded by an index number