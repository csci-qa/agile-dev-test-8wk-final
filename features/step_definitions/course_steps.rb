require 'watir-webdriver'

When /^I search for CSCI 2994$/ do
	@browser.goto 'cscc.edu'
	search_field = @browser.text_field(name: 'q')
	search_field.set('CSCI 2994')
	search_field.send_keys(:enter)
end
Then /^the search yields more than one result$/ do
	@results = @browser.divs(class: 'gsc-webResult gsc-result')
	expect(@results.size).to be > 1
end
Then /^the first result is "CSCI-2994 - CSCI Current Topics"$/ do
	expect(@results[0].div.div.div.a.text) .to eq("CSCI-2994 - CSCI Current Topics")
end

When /^I look at the course CSCI 2994$/ do
	@browser.goto 'http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T='
	end
Then /^the course listing has none for its prerequisites$/ do
  content = @browser.div(id: 'course-info')
	@courseInfo = content.ps
  @courseHeader = content.h3s
  for i in 0..(@courseHeader.size - 1)
    if @courseHeader[i].text == "Prerequisites:" then
      x = i
    end
  end
  expect(@courseInfo[x].text).to eq("None")
end
Then /^I can open the bookstore site to the required text book$/ do
  for i in 0..(@courseHeader.size - 1)
    if @courseHeader[i].text == "Textbooks" then
      x = i
    end
  end
  @courseInfo[x].a.click
  sleep 5
  @browser.windows.last.use
  expect(@browser.url).to eq("http://www.bkstr.com/columbusstateccstore/home/en?cm_mmc=Redirect-_-VanityURL-_-cscc.bkstr.com-_-14803")
end


