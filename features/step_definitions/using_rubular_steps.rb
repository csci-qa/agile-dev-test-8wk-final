require 'watir-webdriver'

#Scenario: Entering a Regular Expression and Test String
Given /^I am on rubular.com$/ do
  @browser = Watir::Browser.new
  @browser.goto "www.rubular.com"
end

When /^I enter in the regular expression and test string$/ do
  @browser.text_field(:id => "regex").set "(.*)@(.*)\\.(.*)"
  @browser.text_field(:id => "test").set "jdenen@cscc.edu"
  
  sleep 2
end

Then /^I get three match groups on separate lines$/ do
  expect(@browser.html).to include("<tr><td>1.</td><td>jdenen</td></tr>") 
  expect(@browser.html).to include("<tr><td>2.</td><td>cscc</td></tr>")
  expect(@browser.html).to include("<tr><td>3.</td><td>edu</td></tr>")
end