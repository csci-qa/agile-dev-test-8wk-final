require 'page-object'


class SearchThePage
	include PageObject

	page_url "http://cscc.edu"
	text_field(:id, "input")
	button(:submit, :id => "submit")
	div(:results, id: => "resInfo-0")

	def search_cscc
	#browser = Watir::Browser.start "http://www.cscc.edu/"
	browser.text_field(:id, "input").set("csci 2994")
	submit

	end
	

end