Given /^I am on the Rubular home page$/ do 
  @page = RubularPage.new @browser
  @page.goto
end

When /^I enter the regex (.*)@(.*)\.(.*)$/ do
  @page.enter_regex
end

And /^I enter jdenen@cscc.edu$/ do
  @page.enter_test
end

Then /^the match result is jdenen@cscc.edu$/ do
  Pending
end

And /^returns three match groups on new lines with index$/ do
  Pending
end

