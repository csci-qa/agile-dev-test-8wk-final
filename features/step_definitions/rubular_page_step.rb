Given /^I have the rubular web page opened$/ do
  @rubular = RubularPage.new @browser
  @rubular.goto
end

When /^I enter the text into text fields$/ do
  @rubular.enter_data
  @match = @rubular.get_match_string
  @match_group = @rubular.get_match_group
end

Then /^I should get a matched result$/ do
  expect(@match).to include("jdenen@cscc.edu")
end

Then /^I should get three match groups$/ do
  expect(@match_group).to include('jdenen') and
  expect(@match_group).to include('cscc') and
  expect(@match_group).to include('edu')
end

Then /^I should get three matches with numbers$/ do
  expect(@match_group).to include('1.') and
  expect(@match_group).to include('2.') and
  expect(@match_group).to include('3.')
end