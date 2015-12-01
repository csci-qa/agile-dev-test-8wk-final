require 'watir-webdriver'

# Hooks
Before do
	@browser = Watir::Browser.new
	@browser.goto 'www.rubular.com'
	@search_field = @browser.text_field(id: 'regex')
	@search_field.set('(.*)@(.*)\.(.*)')
	@test_field = @browser.textarea(id: 'test')
	@test_field.set('jden@cscc.edu')
end
After do
	@browser.close
end

# When I enter the regexp (.*)@(.*)\.(.*)
When /^I enter the regexp \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and test string jden@cscc\.edu$/ do
  @test_field.send_keys(:enter)
  sleep 2
end
Then /^it returns a match result of jden@cscc.edu$/ do
	match = @browser.div(id: 'match_string').span.span.text
	expect(match).to eq("jden@cscc.edu")
end
Then /^it returns three match groups which are jdenen, cscc, and edu$/ do
	groupOne = @browser.div(:id, "match_captures").table[0][1].text
	groupTwo = @browser.div(:id, "match_captures").table[1][1].text
	groupThree = @browser.div(:id, "match_captures").table[2][1].text
	expect(groupOne).to eq("jden")
	expect(groupTwo).to eq("cscc")
	expect(groupThree).to eq("edu")
end
Then /^the match groups are each formatted on a new line and preceded by a number$/ do
	groupOne = @browser.div(:id, "match_captures").table[0][0].text
	groupTwo = @browser.div(:id, "match_captures").table[1][0].text
	groupThree = @browser.div(:id, "match_captures").table[2][0].text
	expect(groupOne).to eq("1.")
	expect(groupTwo).to eq("2.")
	expect(groupThree).to eq("3.")
	# because each is in a new row of the table, they are each on a new line
end