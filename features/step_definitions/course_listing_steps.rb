require 'watir-webdriver'

Given /^I am on the CSCC homepage$/ do
 
  #Open browser and goto the CSCC homepage
  @browser = Watir::Browser.new
  @browser.goto "www.cscc.edu"
end

When /^I search for csci 2994$/ do
  @browser.text_field(:id => "input").set "csci 2994"
  @browser.button(:id => "submit").click
end

Then /^more than one result is returned$/ do
  expect(@browser.html).to include("<b>CSCI</b>-<b>2994</b> - CSCI Current Topics")
  expect(@browser.html).to include("Computer Science (<b>CSCI</b>) 2015-2016 - Columbus State Community")
end



Given /^I have searched for csci 2994$/ do
  @browser = Watir::Browser.new
  @browser.goto "www.cscc.edu"
  @browser.text_field(:id => "input").set "csci 2994"
  
end

When /^the results are displayed$/ do
  @browser.button(:id => "submit").click
end

Then /^the first result should be titled CSCI-994 - CSCI Current Topics$/ do
  expect(@browser.html).to include("<b>CSCI</b>-<b>2994</b> - CSCI Current Topics")
end



Given /^I am on the CSCI-2994 - CSCI Current Topics page$/ do
  pending "WIP"
end

Then /^the prerequisites should be None$/ do
  pending "WIP"
end



When /^I click the textbook link$/ do
  pending "WIP"
end

Then /^I should be directed to the book store page$/ do
  pending "WIP"
end