Feature: Rubular
	As a student, I want to make sure the instructor has a valid email address, so I can ask questions
	
	@rubular
	Scenario:Should be able to enter a regexp of "(.*)@(.*)\.(.*)" and a test string of "jdenen@cssc.edu"
		When I enter the regexp of (.*)@(.*)\.(.*) and a test string of "jdenen@cssc.edu"
		Then I get a match result of "jdenen@cssc.edu" in three groups on different lines
	
	@rubular
	Scenario:The match groups should have an index number in front of them
		When I get the match results from rubular
		Then they should be preceded by an index number