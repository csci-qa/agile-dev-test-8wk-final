require 'page-object'

class ListingPage
  include PageObject

  page_url "http://cscc.edu/"
  
  text_field(:input, :id => "input")
  button(:submit, :id => "submit")
  #link(:first, :id => "first" :href => "http://global.cscc.edu/courses/course.asp?Z=&amp;D=B&amp;Q=SP&amp;Y=16&amp;C=CSCI-2994&amp;T=")
  
  def perform_search
    self.input = "computer science"
    self.submit
  end
  
  def search_csci
    self.input = "csci 2994"
    self.submit
  end
  
  #def class_link
  #  self.first
  #end
    
end

