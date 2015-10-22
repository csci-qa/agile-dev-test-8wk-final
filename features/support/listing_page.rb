require 'page-object'

class ListingPage
  include PageObject

  page_url "http://cscc.edu/"
  
  text_field(:input, :id => "input")
  button(:submit, :id => "submit")
  div(:first_result_title, :class => "gs-title")
    
  def perform_search
    self.input = "csci 2994"
    self.submit
  end
  
end

