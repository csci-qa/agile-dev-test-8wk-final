When /I enter a regexp of \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and a test string of jden@cscc\.edu$/ do
	pending "WIP"
	# rubular should except the entering of  these fields
end

When /^I enter the regexp \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and test string jden@cscc\.edu$/ do
	pending "WIP"
	# rubular should return a match result :jdenen@cscc.edu
	# should return three match groups: jdenen, cscc, edu
	# each match group should be formatted on a new line and preceded by a number
end