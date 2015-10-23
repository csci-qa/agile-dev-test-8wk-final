require 'page-object'

class RubularPage
  include PageObject

  page_url "http://rubular.com/"
  
  text_field(:regex, :id => "regex")
  textarea(:test, :id => "test")
  span(:match_string, :id => "match_string_inner")
  div(:match_captures, :id => "match_captures")
  
  def input_values
    self.regex = "(.*)@(.*)\\.(.*)"
    self.test = "jdenen@cscc.edu"
  end
  
end