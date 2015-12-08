require 'watir-webdriver'

When /^I enter the regexp for a normal email address and a test string of 'jdenen@cscc.edu'$/ do
	@browser.goto 'www.rubular.com'
	expression_field = @browser.text_field(id: 'regex')
	expression_field.set ('(.*)@(.*)\.(.*)')
	expression_field.send_keys(:enter)
	sleep 4
	test_field = @browser.text_field(id: 'test')
	test_field.set ('jdenen@cscc.edu')
	test_field.send_keys(:enter)
	sleep 4
	
end

Then /^I get a match result of "jdenen@cssc.edu" in three groups on different lines$/ do
	results = @browser.div(id: 'match_string')
	groups = @browser.div(id: 'match_captures')
	expect(results.spans[1].text).to eq "jdenen@cscc.edu"
	expect(groups.trs[0].text).to eq "1. jdenen"
	expect(groups.trs[1].text).to eq "2. cscc"
	expect(groups.trs[2].text).to eq "3. edu"
	expect(groups.trs.size).to eq 3
end

When /^I get the match results from rubular$/ do
	@browser.goto 'www.rubular.com'
	expression_field = @browser.text_field(id: 'regex')
	expression_field.set ('(.*)@(.*)\.(.*)')
	expression_field.send_keys(:enter)
	sleep 4
	test_field = @browser.text_field(id: 'test')
	test_field.set ('jdenen@cscc.edu')
	test_field.send_keys(:enter)
	sleep 4
	
end

Then /^they should be preceded by an index number$/ do
	result = @browser.div(id: 'match_captures')
	expect(result.trs[0].text).to eq "1. jdenen"
	expect(result.trs[1].text).to eq "2. cscc"
	expect(result.trs[2].text).to eq "3. edu"
	
end

















