
 Given /^I am on the cscc.edu page$/ do
 	# navigate our create a post page
 	@page = SearchThePage.new @browser
 	@page.goto
 end

 When /^searching csci 2994 on CSCC homepage$/ do
 	# fill in search box, click submit
 	@page.search_cscc
 end

 Then /^yield more than one result$/ do
 	# the page shows the word "CSCI-2994"
 	expect @page.results_element.text
 end

When /^searching csci 2994 on CSCC homepage to view first result$/ do
	@page.search_cscc
end

Then /^it is titled CSCI-2994 - CSCI Current Topics$/ do
	expect @page.first_result_element.text

end

When /^I click the link for csci 2994 from result page$/ do
	@page.search_cscc_description
end

Then /^the next page will list the prerequisites as none$/ do
	expect @page.prereq_element[4].paragraph_element[4].text
end

When /^I click the link for csci 2994 from result page$/ do

end

Then /^the next page will list a link for Textbooks$/ do
	
end

