require 'page-object'

class ListingPage
  include PageObject

  page_url "http://cscc.edu/"
  
  text_field(:q, :id => "input")
  button(:sa, :id => "submit")
  
  def perform_search
    self.q = "computer science"
    self.sa
  end
   
end

