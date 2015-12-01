require 'watir-webdriver'

When /^I enter the regexp of '(.*)@(.*)\.(.*)' and a test string of 'jdenen@cscc.edu'$/ do
	@browser.goto 'www.rubular.com'
	expression_field = @browser.text_field(id: 'regex')
	expression_field.set ('(.*)@(.*)\.(.*)')
	expression_field.send_keys(:enter)
	sleep 5
	test_field = @browser.text_field(id: 'test')
	test_field.set ('jdenen@cscc.edu')
	test_field.send_keys(:enter)
	
end

Then /^I get a match result of "jdenen@cssc.edu" in three groups on different lines$/ do
	result = @browser.div(class: 'match_string')
	groups = @browser.divs(class: 'match_captures')
	expect(@results).to eq "jdenen@cscc.edu"
	expect(@groups).to eq "1. jdenen", "2. cscc", "3. edu"
end

When /^I get the match results from rubular$/ do
	@browser.goto 'www.rubular.com'
	expression_field = @browser.text_field(id: 'regex')
	expression_field.set ('(.*)@(.*)\.(.*)')
	expression_field.send_keys(:enter)
	test_field = @browser.text_field(id: 'test')
	test_field.set ('jdenen@cscc.edu')
	test_field.send_keys(:enter)
	
end

Then /^they should be preceded by an index number$/ do
	result = @browser.div(class: 'match_captures')
	expect(@result).to eq "1. jdenen", "2. cscc", "3. edu"
	
end

















