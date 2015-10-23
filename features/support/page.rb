require 'page-object'
require 'watir-webdriver'

class Search
  include PageObject

  page_url "http://www.cscc.edu/"
  
  text_field(:search_phrase, :id => "input")
  button(:submit_search, :id => "submit")
  link(:name, :class => "gs-title")
    
  
end
  
