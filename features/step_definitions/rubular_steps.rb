require 'watir-webdriver'

Given(/^I am on the Rubular page$/) do
  @page = RubularPage.new @browser
  @page.goto
end

When(/^ $/) do
  pending
end

Then(/^ $/) do
  pending
end
