require 'watir-webdriver'

Given(/^I am on the Rubular page$/) do
  @page = RubularPage.new @browser
  @page.goto
end

When(/^I enter the desired values$/) do
  @page.input_values
end

Then(/^the page displays the desired result$/) do
  pending
end

Then(/^the results are formatted correctly$/) do
  pending
end
