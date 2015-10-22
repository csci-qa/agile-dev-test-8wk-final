Given /^I am on the cscc home page$/ do
  @cscc = CourseListing.new @browser
  @cscc.goto
end

When /^I enter csci 2994 into search field$/ do
  pending
end

Then /^Then I should see more than 1 result$/ do
  pending
end