require 'watir-webdriver'

Given(/^I am on the Rubular page$/) do
  @page = RubularPage.new @browser
  @page.goto
end

When(/^I enter the desired values$/) do
  @page.input_values
end

Then(/^the values are accepted$/) do
  pending
end
