require 'watir-webdriver'

Given(/^I am on the CSCC homepage$/) do
  @page = ListingPage.new @browser
  @page.goto
end

When(/^I perform a search$/) do
  @page.perform_search
end
Then(/^I receive multiple results$/) do
  expect(@page.html).to include("About 50 results")
end
Then(/^the first result is titled "CSCI-2994 - CSCI Current Topics"$/) do
  expect(@page.first_result_title).to eq("CSCI-2994 - CSCI Current Topics")
end

When(/^I navigate to that class page$/) do
  @page = ThatClassPage.new @browser
  @page.goto
end
Then(/^the prerequisites are "none"$/) do
  expect(@page.prerequisites).to include("None")
end
Then(/^there is a link to the bookstore under "Textbooks" for the course listing$/) do
  expect(@page.bookstore_link?).to be true
end
