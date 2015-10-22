Given /^I am on the Columbus State home page$/ do
  @page = CSCCHomePage.new @browser
  @page.goto
  sleep 2
end

When /^I search for CSCI 2994$/ do
  @page.search_csci_2994
  @page.submit
  sleep 2
end

Then /^I should get more than 1 result$/ do
  @page = CSCCSearchResultsPage.new @browser
  results_message = @page.number_of_results
  results_match = results_message.scan(/\d+/)
  expect(results_match[0].to_i).to be > 1
end

And /^the first result should be titled CSCI-2994 - CSCI Current Topics$/ do
  expect(@page.results).to eq("CSCI-2994 - CSCI Current Topics")
end

When /^I have clicked the CSCI-2994 - CSCI Current Topics link from the search results$/ do
  @page = CSCCCourseInfoPage.new @browser
  @page.goto
end

Then /^I should see that the course has no prerequisites$/ do
  expect(@page.course_info_element.paragraph_elements[4].text).to eq("None")
end

And /^I should see a link to the bookstore under Textbooks$/ do
  expect(@page.textbook_link_element.text).to eq("View required and optional textbooks for CSCI2994.")
end
