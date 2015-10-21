require 'page-object'

class ListingPage
  include PageObject

  page_url "http://cscc.edu/"
  
  text_field(:input, :id => "input")
  button(:submit, :id => "submit")
  
  def perform_search
    self.input = "computer science"
    self.submit
  end
  
  def search_csci
    self.input = "csci 2994"
    self.submit
  end
  
  def class_link
    
  end
    
end

