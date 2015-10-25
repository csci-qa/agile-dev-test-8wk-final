require 'page-object'

class CSCCHomePage
	include PageObject

	page_url "www.cscc.edu"

	text_field(:search, :id => "input")
	button(:submit, :id => "submit")

	def search_csci_2994
		self.search = "CSCI 2994"
	end
end