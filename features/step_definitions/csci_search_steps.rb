Given /^I am on the CSCC home page$/ do
  # navigate to the CSCC home page page
  @page = Search.new @browser
  @page.goto
end

When /^I enter csci 2994 in the search field$/ do
  # enter "csci 2994" into the search field named "input"
  @page.search_phrase = "csci 2994"
end
  
Then /^more than one result is returned$/ do
  # many results are returned
  @page.submit_search
end  
  

#Given /^I have searched for csci 2994$/ do
 #search is true
# @page.name_element.text
#end

When /^the results are displayed$/ do
 #there is a list of results
 @page = Search.new
 @page.name_element.text
 
end

Then /^the first result should be CSCI-2994 - CSCI Current Topics$/ do
 # the page shows the words "CSCI-2994 - CSCI Current Topics"
 # expect(@page.html).to include("CSCI-2994 - CSCI Current Topics")
 expect(@page.name).to eq("CSCI-2994 - CSCI Current Topics")
end


Given /^I am on the CSCI-2994 - CSCI Current Topics Page$/ do
  #@page = CSCI-2994 - CSCI Current Topics Page
  #@page.goto
end

When /^I read the prerequisites$/ do
  #expect(@page.html).to include("prerequisites")
end

Then /^the prerequisites state none$/ do
  # prerequisites states none
end
  

Given /^I am on CSCI-2994 - CSCI Current Topics Page$/ do
  #@page = CSCI-2994 - CSCI Current Topics Page
 # @page.goto
end

When /^I click the link textbook$/ do
 #page says textbooks
 #click that link
end

Then /^I am directed to the book store page$/ do
  #goto book store page
end