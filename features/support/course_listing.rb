require "watir-webdriver"
require "page-object"

class CourseListing 
  include PageObject
  
  page_url "http://www.cscc.edu"
  
  text_field(:search_field, :id => 'input')
  button(:search_button, :id => 'submit')

  def enter_text_into_search
    self.search_field = "csci-2994"
    self.search_button
  end
end


