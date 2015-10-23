
Given /^I have a browser on the CSCI home page$/ do
	@page = HomePage.new @browser
	@page.goto
end

When /^I enter csci 2994 into the search field$/ do
	@page.input_search
end

And /^I click the search button$/ do
	@page.click_search
end

Then /^I can see more than one search results$/ do
  min_elements = 2
  @browser.link(:class => "gs-title", 
    :index => (min_elements-1)).wait_until_present
end

And /^the first result is titled CSCI-2994 - CSCI Current Topics$/ do
  @page.should have_link(link, :href => "http://global.cscc.edu/courses/course.asp?Z=&amp;D=B&amp;Q=SP&amp;Y=16&amp;C=CSCI-2994&amp;T=")
end

Given /^I have selected the first search result$/ do
  @page = HomePage.new @browser
  @page.goto
  @page.input_search
  @page.click_search
  @page.select_link
end

Then /^the course lists None for its prerequisites$/ do
  pending
end

And /^there is a link to the bookstore$/ do
  pending
end

