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