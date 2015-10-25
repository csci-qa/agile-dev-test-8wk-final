Given /^I am on the Rubular home page$/ do
  @page = RubularPage.new @browser
  @page.goto
  sleep 2
end

When /^I enter a regexp and a test string$/ do
  @page.enter_strings
  sleep 2
end

Then /^it should return a match result of jdenen@cscc.edu$/ do
  expect(@page.match_string).to eq("jdenen@cscc.edu")
end

And /^it should return 3 match groups each preceded by an index$/ do
  expect(@page.match_captures).to eq("1. jdenen\n2. cscc\n3. edu")
end

And /^each match group should be formatted on a new line$/ do
  match_message = @page.match_captures
  newline_match = match_message.scan(/\n/)
  expect(newline_match.size).to be 2
end