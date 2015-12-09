
require 'watir-webdriver'
require 'cucumber'


def assert message, &block
	begin
		
		if (block.call)
			puts "Assertion FAILED for #{message}"
		else
			puts "Assertion PASSED for #{message}"
		end
	rescue => e
		puts "Assertion FAILED for #{message} with exception '#{e}'"
	end
end


#				 Scenario: Testing an email address
Given(/I at the rubular homepage$/)do
	@browser.goto 'http://www.rubular.com'
end

When(/^I enter a regular expression for a full email address$/) do
	regex = '(.*)@(.*)\.(.*)'
	@browser.text_field(:id => 'regex').flash
	@browser.text_field(:id => 'regex').set (regex)
end

Then(/^I should be able to test an email address$/) do
	regex = '(.*)@(.*)\.(.*)'
	@browser.text_field(:id => 'regex').flash
	@browser.text_field(:id => 'regex').set (regex)
	@browser.textarea(:name => 'test').set 'jdenen@cscc.edu'
	@result = @browser.element(:id => 'error').present?

	@key = false
	expect(@result).to eq(@key)
end


#		           Scenario: Returning a match result
When(/^I test the string "jdenen@cscc.edu"$/) do
	@browser.goto 'http://www.rubular.com'
	regex = '(.*)@(.*)\.(.*)'
	@browser.text_field(:id => 'regex').flash
	@browser.text_field(:id => 'regex').set (regex)
	@browser.textarea(:name => 'test').set 'jdenen@cscc.edu'
end

Then(/^I get a match result of "jdenen@cscc.edu"$/) do
	
	assert('that the match result contains a string of jdenen@cscc.edu'){@browser.div(:id => 'result').text.include? 'jdenen'} 

end


#				 Scenario: Returning a match group
Then(/^I get three match groups; "jdenen", "cscc", "edu"$/) do

	assert('that the result contains a string of cscc'){@browser.div(:id => 'result').text.include? '2. cscc'}

end


#			Scenario: Match group formatted in new line

Then(/^the match group is formatted in new line$/) do
	@table_value = @browser.div(:id => 'result').text 
	@key = '\n'
	expect(@table_value).to include "\n"
end


#			Scenario: Match group preceded by an index number  

Then(/^the match group is preceded by an index number$/) do

	assert('that the result contains a string of 1.'){@browser.div(:id => 'result').text.include? "1."}

end