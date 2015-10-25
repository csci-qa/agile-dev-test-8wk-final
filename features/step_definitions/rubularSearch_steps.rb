Given /^I am on the Rubular site$/ do
	 #@browser.goto "http://rubular.com/"
	 @page = SearchTheRubularPage.new @browser
	 @page.goto
end

When /^I enter a regexp and a test string$/ do
	@page.search_rubular
end

Then /^1 jdenen 2 cscc 3 edu should be returned on seperate lines$/ do
	expect @page.table_element.text
end

