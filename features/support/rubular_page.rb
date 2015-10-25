require 'page-object'

class RubularPage
	include PageObject

	page_url "http://www.rubular.com/"

	text_field(:regex, :id => "regex")
	text_area(:test, :id => "test")
	div(:match_string, :id => "match_string")
	div(:match_captures, :id => "match_captures")

	def enter_strings
		self.regex = "(.*)@(.*)\\.(.*)"
		self.test = "jdenen@cscc.edu"
	end
end