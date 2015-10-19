
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
 	expect(@page.div(:id => "resInfo-0").text).to include("About 50 results")
 end

#When /^I create duplicate posts$/ do
#	@page.create_valid_post
#	@page.goto
#	@page.create_valid_post
#end

#Then /^I get an error$/ do
#	expect(@page.html).to include("Error!")
#end
