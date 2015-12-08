require 'watir-webdriver'

When /^I search for CSCI 2994 from the CSCC homepage$/ do

		@browser.goto 'www.cscc.edu'
		search_field=@browser.text_field(id: 'input')
		search_field.flash
		search_field.set('CSCI-2994')
		search_field.send_keys(:enter)
end

Then /^there are multiple listings$/ do
# count the number of divs with class element gs-title
	@results=@browser.divs(class: 'gs-title')
	expect(@results.size).to be > 1

end

When /^I check the first search result$/ do
		@browser.goto 'www.cscc.edu'
		search_field=@browser.text_field(id: 'input')
		search_field.flash
		search_field.set('CSCI-2994')
		search_field.send_keys(:enter)
		@results=@browser.divs(class: 'gs-title')
		@first_result=@results[0]
end

Then /^it is listed as CSCI 2994 - Current topics$/ do

	expect(@first_result.text).to eq 'CSCI-2994 - CSCI Current Topics'
end

When /^I look for prerequisites$/ do

		@browser.goto 'www.cscc.edu'
		search_field=@browser.text_field(id: 'input')
		search_field.flash
		search_field.set('CSCI-2994')
		search_field.send_keys(:enter)
		sleep 1
		@results=@browser.divs(class: 'gs-title')
		@first_result=@results[0].a.click		
		@browser.windows.last.use
		@results=@browser.divs(id: 'course-info')
		@prereq_result=@results[0].ps[4]

end

Then /^I find that it lists None$/ do

		expect(@prereq_result.text).to eq 'None'
end

When /^I look under the Textbooks heading$/ do
		@browser.goto 'www.cscc.edu'
		search_field=@browser.text_field(id: 'input')
		search_field.flash
		search_field.set('CSCI-2994')
		search_field.send_keys(:enter)
		sleep 1
		@results=@browser.divs(class: 'gs-title')
		@first_result=@results[0].a.click		
		@browser.windows.last.use
		@results=@browser.divs(id: 'course-info')
		@link_result=@results[0].ps[7].a

end


Then /^I find a link to the bookstore$/ do

		expect(@link_result.text).to eq 'View required and optional textbooks for CSCI2994.'


		
end


	
	