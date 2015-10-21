require 'watir-webdriver'

#Scenario: Searching for CSCI 2994
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


#Scenario: Finding the First Result
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


#Viewing the Prerequisites
Given /^I am on the CSCI-2994 - CSCI Current Topics page$/ do
  @browser = Watir::Browser.new
  @browser.goto "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T="
end

Then /^the prerequisites should be None$/ do
  expect(@browser.html).to include("<h3>Prerequisites:</h3>
<p><em>None</em></p>")
end


#Scenario: Using the Book Store Link
When /^I click the book store link$/ do
  @browser.link(:href, "http://bookstore.cscc.edu").click
  sleep 4
  @browser.windows.last.use
end

Then /^I should be directed to the book store page$/ do
  expect(@browser.html).to include("home-1a")
end