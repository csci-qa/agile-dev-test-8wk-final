require 'watir-webdriver'

Given(/^I am on the CSCC homepage$/) do
  @page = ListingPage.new @browser
  @page.goto
end

When(/^I perform a search$/) do
  @page.perform_search
end
Then(/^I see search results$/) do
  expect(@page.html).to include("Can't find it? Try the Help Desk at")
end

When(/^I search for csci 2994$/) do
  pending
end
Then(/^I recieve multiple results$/) do
  pending
  And(/^the first result is titled "CSCI-2994 - CSCI Current Topics"$/) do
	pending
  end
  And(/^each result links to the definition of a Blended course$/) do
	pending
  end
  And(/^each resulting Course Name links to the Computer Science department course log$/) do
	pending
  end
end

When(/^I perform a Subject Search in Autumn Semester 2015$/) do
  pending
end
Then(/^two sections of CSCI 2994 should be displayed$/) do
  pending
end
