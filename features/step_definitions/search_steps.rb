Given /^I am on the CSCC homepage$/ do
  # navigate to the CSCC homepage
  @page = Search.new @browser
  @page.goto
end

When /^I enter csci 2994 in the search field$/ do
  # enter "csci 2994" into search field named "input"
  @page.search_phrase = "csci 2994"
  
end

Then /^more than one result is returned$/ do
  # many results are returned
  @page.submit_search
end


#Given /^I have searched for csci 2994$/ do
  #search is true
  #@page.name_element.text
#end

When /^the results are displayed$/ do
  #thers is a list of results
  @page =Search.new 
  @page.name_element.text
end

Then /^the first result should be CSCI-2994 - CSCI Current Topics$/ do
  #the page shows the words "CSCI-2994 - CSCI Current Topics"
  expect(@page.name).to eq("CSCI-2994 - CSCI Current Topics")
end
  
Given /^I am on the CSCI-2994 - CSCI Current Topics page$/ do
  #page = CSCI-2994 - CSCI Current Topics Page
  #@page.goto
end

When /^I read the prerequisites$/ do
  #expect(@page.html).to include("prerequisites")
end

Then /^the prerequisites should be None$/ do
  #prerequisites states none
end

Given /^I am on CSCI-2994 - CSCI Current Topics page$/ do
  #@page = CSCI-2994 - CSCI Current Topics Page
  @page.goto
end

When /^I click the textbook link$/ do
	#page says textbooks
	#click that.link
end

Then /^I am directed to the book store page$/ do
  #takes to book store link
end
