
Before do
	@browser = Watir::Browser.new :chrome
	@browser.goto "http://cscc.edu/"
end

After do
	sleep 5
 	@browser.close
end