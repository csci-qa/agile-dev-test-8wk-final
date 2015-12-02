require 'watir-webdriver'

When /^I search CSCCs homepage using the search box$/ do
	@browser.goto 'www.cscc.edu'
	search_field = @browser.text_field(id: 'input')
	search_field.set ('CSCI 2994')
	search_field.send_keys(:enter)
end

Then /^I get more than one result$/ do
	results = @browser.divs(class: 'gs-title')
	puts results.size
	expect(results.size).to be > 0
end

When /^I click the first result$/ do
	@browser.goto 'www.cscc.edu'
	search_field = @browser.text_field(id: 'input')
	search_field.set ('CSCI 2994')
	search_field.send_keys(:enter)
	link_a = @browser.a(class: 'gs-title').click
	@browser.windows.last.use
end

Then /^I go to this courses page$/ do
	results = @browser.title
	expect(@browser.title).to eq "CSCI-2994 - CSCI Current Topics"
end

When /^I look at the course description$/ do
	@browser.goto 'www.cscc.edu'
	search_field = @browser.text_field(id: 'input')
	search_field.set ('CSCI 2994')
	search_field.send_keys(:enter)
	link_a = @browser.a(class: 'gs-title').click
	@browser.windows.last.use
end

Then /^I get no prerequisites for the course$/ do
	result = @browser.div(id: 'course-info')
	result.ps[4]
	expect(result.ps[4].text).to eq "None"
end

When /^I look under textbooks in the course listing$/ do
	@browser.goto 'www.cscc.edu'
	search_field = @browser.text_field(id: 'input')
	search_field.set ('CSCI 2994')
	search_field.send_keys(:enter)
	link_a = @browser.a(class: 'gs-title').click
	@browser.windows.last.use
end

Then /^there is a link to the bookstore under textbooks$/ do
	results = @browser.div(id: 'course-info')
	results.ps[7]
	expect(results.ps[7].text).to eq "View required and optional textbooks for CSCI2994.\n(opens in new window)"
end