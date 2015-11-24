require 'watir-webdriver'

Before do
	@browser = Watir::Browser.new
end
After do
	@browser.close
end
When /^I search for CSCI 2994$/ do
	@browser.goto 'cscc.edu'
	search_field = @browser.text_field(name: 'q')
	search_field.set('CSCI 2994')
	search_field.send_keys(:enter)
end
Then /^the search yields more than on result$/ do
	@results = @browser.divs(class: 'gsc-webResult gsc-result')
	expect(@results.size).to be > 1
end
Then /^the first result is "CSCI-2994 - CSCI Current Topics"$/ do
	expect(@results[0].div.div.div.a.text) .to eq("CSCI-2994 - CSCI Current Topics")
end

When /^I look at the course CSCI 2994$/ do
	@browser.goto 'http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T='
	end
Then /^the course listing has None for its prerequisites$/ do
	@courseInfo = @browser.div(id: 'course-info').ps
	puts "************"
	puts @courseInfo.size
	puts "**********"
end
Then /^I can open the bookstore site to the required text book$/ do
	pending "WIP"
	# the requirred textbook can be viewed at the bookstore website
end
