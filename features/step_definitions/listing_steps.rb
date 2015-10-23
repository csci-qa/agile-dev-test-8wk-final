require "watir-webdriver"

#Scenario: Search for a result
Given /^I am on the homepage$/ do
  @page = Watir::Browser.new
  @page.goto "www.cscc.edu"
 end
 
 When /^I am searching for a result$/ do
   @page.text_field(:id => "input").set "csci 2994"
   @page.button(:id => "submit").click
 end
 
 Then /^more than one result will be found$/ do
   @results = ResultsPage.new @page
   expect(@results.result_number).to include("50 results")
 end

#Scenario: finding first result

When /^I am on the search page$/ do
  @page = Watir::Browser.new
  @page.goto "www.cscc.edu"
  @page.text_field(:id => "input").set "csci 2994"
  @page.button(:id => "submit").click
end

Then /^I will find the first result$/ do
  @results = ResultsPage.new @page
  expect(@results.first_result_element.text).to eq "CSCI-2994 - CSCI Current Topics"
end

#searching for prerequisites 
Given /^I am on CSCI-2994 Current Topics page$/ do
  @page = Watir::Browser.new
  @page.goto "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T="
end

Then /^I can see there are no prerequisites$/ do
  expect(@page.html).to include("<h3>Prerequisites:</h3>
<p><em>None</em></p>")
end

#Scenario look for a working bookstore link
When /^I click on the bookstore link$/ do
  @page.link(:href, "http://bookstore.cscc.edu").click
  sleep 5
  @page.windows.last.use
end

Then /^I am on the bookstore website$/ do
  expect(@page.html).to include("home-1a")
end

