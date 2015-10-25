require 'page-object'


class SearchTheRubularPage
	include PageObject

	page_url "http://rubular.com"
	text_field(:regex, :id => "regex")
	textarea(:testarea, :id => "test")
	div(:table, :id => "match_captures")


	def search_rubular
		self.regex= "(.*)@(.*)\\.(.*)"
		self.testarea= "jdenen@cscc.edu"
	end


end
