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
  @match_group = RubularPage.new @browser
  expect(@match_group.match_group_element.text).to eq "1. jdenen\n2. cscc\n3. edu"

end