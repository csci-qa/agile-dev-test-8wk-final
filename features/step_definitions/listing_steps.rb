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

When(/^I search for "csci 2994"$/) do
  @page.search_csci
end
Then(/^I recieve multiple results$/) do
  pending
  And(/^the first result is titled "CSCI-2994 - CSCI Current Topics"$/)
	pending
  And(/^the prerequisites are "none"$/)
	pending
  And(/^there is a a link to the bookstore under "Textbooks" for the course listing$/)
	@page.class_link
	sleep 5
end
