When /^I enter a regexp of \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and a test string of jden@cscc\.edu$/ do
	pending "WIP"
	# rubular should except the entering of  these fields
end
Then /^it is excepted$/ do
	pending "WIP"
	# rubular should except the regexp and string
end

When /^I enter the regexp \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and test string jden@cscc\.edu$/ do
	pending "WIP"
	# rubular should return a match result :jdenen@cscc.edu
	# should return three match groups: jdenen, cscc, edu
	# each match group should be formatted on a new line and preceded by a number
end
Then /^it returns a match result of jden@cscc.edu$/ do
	pending "WIP" 
	#rubular returns match result: jden@cscc.edu
end
Then /^it returns three match groups which are jdenen, cscc, and edu$/ do
	pending"WIP"
	#rubular returns three match fields: jdenen, cscc, and edu
end
Then /^the match groups are each formatted on a new line and preceded by a number$/ do
	pending "WIP"
	# the three match groups are formatted on new line
		# and preceded by number
end
