require 'watir-webdriver'

Given /^I am on rubular.com$/ do
  @page= Watir::Browser.new
  @page.goto "http://rubular.com/"
end

When /^I enter the regexp and the test string$/ do
@page.text_field(:id => "regex").set "(.*)@(.*)\\.(.*)"
@page.text_field(:id => "test").set "jdenen@cscc.edu"
sleep 5
end

Then /^I will find the match groups$/ do
  @match_group = RubularPage.new @page
  expect(@match_group.result_element.text).to eq "1. jdenen\n2. cscc\n3. edu"
end