require 'watir-webdriver'

Before do
#	puts "%%%%%%%%%%%%%%before%%%%%%%%%%"
	@browser = Watir::Browser.new
	@browser.goto 'www.rubular.com'
	search_field = @browser.text_field(id: 'regex')
	search_field.set('(.*)@(.*)\.(.*)')
	test_field = @browser.textarea(id: 'test')
	test_field.set('jden@cscc.edu')
end
After do
#	puts "$$$$$$$$$$$$$$$$$$$$$$after%%%%%%%%%%%%%%%"
	@browser.close
end

When /^I enter the regexp \(\.\*\)@\(\.\*\)\\\.\(\.\*\) and test string jden@cscc\.edu$/ do
end
Then /^it returns a match result of jden@cscc.edu$/ do
#	puts "!!!!!!!!!!!!HERE!!!!!!!!!!!!!"
	match = @browser.div(:id, "match_string").text
#	puts "****************"
#	puts match
#	puts "****************"
	expect(match)to eq "jden@cscc.edu"
end
Then /^it returns three match groups which are jdenen, cscc, and edu$/ do
	groupOne = @browser.div(:id, "match_captures").table[1][2].text
	groupTwo = @browser.div(:id, "match_captures").table[2][2].text
	groupThree = @browser.div(:id, "match_captures").table[3][2].text
	expect(groupOne).to eq("jden")
	expect(groupTwo).to eq("cscc")
	expect(groupThree).to eq("edu")
	#rubular returns three match fields: jdenen, cscc, and edu
end
Then /^the match groups are each formatted on a new line and preceded by a number$/ do
	groupOne = @browser.div(:id, "match_captures").table[1][1].text
	groupTwo = @browser.div(:id, "match_captures").table[2][1].text
	groupThree = @browser.div(:id, "match_captures").table[3][1].text
	expect(groupOne.to eq("1.")
	expect(groupTwo).to eq("2.")
	expect(groupThree).to eq("3.")
	# the three match groups are formatted on new line
		# and preceded by number
end