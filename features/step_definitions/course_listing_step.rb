Given /^I am on the cscc home page$/ do
  @cscc = CourseListing.new @browser
  @cscc.goto
end

When /^I enter csci 2994 into search field$/ do
  @cscc.enter_text_into_search
end

Then /^I should see more than one result$/ do
  expect(@cscc.html).to include("CSCI-2994") and
  expect(@cscc.html).to include("Software Developer Track")
end

Given /^I am on the search result$/ do
  @cscc = CourseListing.new @browser
  @cscc.goto
end

When /^the page loads$/ do
  @cscc.enter_text_into_search
end

Then /^the first result should be titled CSCI-2994 - CSCI Current Topics$/ do
  expect(@cscc.html).to include("http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SPs&Y=16&C=CSCI-2994&T=")
end

Given /^I am on the CSCI-2994 page$/ do
  @course = CoursePage.new @browser
end

When /^the CSCI-2994 page loads$/ do
  @course.goto
end

Then /^the prerequisites should show None$/ do
  #ultimately I wanted to create a hash table with { h3 : p } where h3 is the key and p tag is the values.
  #Then I wanted to expect the hash["Prerequisite"] to equal "None"
  #alternatively I wanted to go through the main div container and push the None keyword to the array
  #the count of None array should be equal to 3
  expect(@course.find_none).to eq(3)
end

Then /^I should see a link for the bookstore under Textbooks$/ do
  expect(@course.html).to include("http://bookstore.cscc.edu")
end