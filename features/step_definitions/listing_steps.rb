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

When(/^I navigate to that class page$/) do
  pending
end
Then(/^the prerequisites are "none"$/) do
  pending
end
Then(/^there is a a link to the bookstore under "Textbooks" for the course listing$/) do
  pending
end
