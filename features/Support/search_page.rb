require 'page-object'


class SearchThePage
	include PageObject

	page_url "http://cscc.edu"
	text_field(:id, "input")
	button(:submit, :id => "submit")
	div(:results, :id => "resInfo-0")
	div(:first_result, :class => "gsc-thumbnail-inside")
	div(:prereq, :id => "bottom")

	def search_cscc
	browser.text_field(:id, "input").set("csci 2994")
	submit
	end
	
	def search_cscc_description
	search_cscc
	browser.link(:text, "CSCI-2994 - CSCI Current Topics").click
	end


end