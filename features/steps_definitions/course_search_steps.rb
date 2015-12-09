
require 'watir-webdriver'
#                   Scenario: Searching for a Course to get result

Given(/I am in the cscc homepage$/)do
	@browser.goto 'http://www.cscc.edu'
end

When(/^I search for "csci 2994"$/)do
	@browser.text_field(:id => 'input').flash
	@browser.text_field(:id => 'input').set 'csci 2994'
	@browser.button(:id => 'submit').click
end

Then(/^I get more than 1 results$/)do
	results = @browser.divs(:class => 'gs-title')  
	expect(results.size).to be > 1
end


#                   Scenario: Title on the page result 

Given(/I am at the CSCI-2994-CSCI Current Topics page$/)do
	@browser.goto 'http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T='
end

When(/^I search for the first time$/)do
	@title = @browser.text.include? 'CSCI-2994 - CSCI Current Topics'
end

Then(/^I get a title "CSCI-2994-CSCI Current Topics"$/)do
	@key = true
	expect(@title).to eq(@key)
end


#                 Scenario: Checking for prerequisites

When(/^I view the prerequisites$/) do
  @prerequisite = @browser.text.include? 'None'
end

Then(/^I get no listing for prerequisites$/) do
	@prerequisite = @browser.text.include? 'None'
	@key = true
	expect(@prerequisite).to eq(@key)
end


#                 Scenario:Checking for textbooks

When(/^I view "Textbooks"$/) do
	link = 'http://bookstore.cscc.edu'
	@bookstore = @browser.link.exist?
end

Then(/^I get a link to the bookstore$/) do
	@key = true
	expect(@bookstore).to eq(@key)
end
