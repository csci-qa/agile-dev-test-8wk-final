require 'watir-webdriver'

Given(/^I am on the Rubular page$/) do
  @page = RubularPage.new @browser
  @page.goto
end

When(/^I enter the desired values$/) do
  @page.input_values
  sleep 1
end

Then(/^the page displays the desired result$/) do
  expect(@page.match_string).to eq("jdenen@cscc.edu")
end

Then(/^the results are formatted correctly$/) do
  expect(@page.match_captures).to eq("1. jdenen\n2. cscc\n3. edu")
end
