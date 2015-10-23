Given /^I am on the Rubular home page$/ do
  # navigate to the Rubular home page page
  #@page.goto
end

When /^I enter a regular expression$/ do
  # enter (.*)@(.*)\.(.*) in the field named "regex"
end
  
Then /^I can test the expression$/ do
  # enter the test string "jdenen@cscc.edu"
end  
  
 
  
Given /^I have an expression$/ do
  # enter the test string "jdenen@cscc"
end

When /^I enter the test string$/ do
  # enter jdenen@cscc in the field named "test"
end
  
Then /^a match result should appear$/ do
  #expect a value in the field named match_captures
end  
  
 
  
Given /^I have tested the expression$/ do
  # there is a value in the field named match_catures
end

When /^I read the match result$/ do
  # there is a value in the field named match_captures
end
  
Then /^I can compare the result to the expected value$/ do
  #expect the three items in match_captures to be jdenen, cscc and edu
end 
  
 
  
Given /^I have a tested expression$/ do
  # match_captures has a value/there has been a valid test
end

When /^I read the match groups$/ do
  # there is a value in the field named match_captures
end
  
Then /^the amount of the match groups is three$/ do
  #expect the three items in match_captures to be jdenen, cscc and edu
end 
  
 
  
Given /^I have three match groups$/ do
  # match_captures number amount = 3
end

When /^I list the match groups$/ do
  # each match group is on a different line
end
  
Then /^each line starts with a new number$/ do
  #expect match group to be preceeded by a different number, starting with 1
end 