require 'page-object'

class RubularPage
  include PageObject

  page_url "http://rubular.com/"
  
  text_field(:regex, :id => "regex")
  text_field(:test, :id => "test")
  
  
  def input_values
    self.regex = "(.*)@(.*)\\.(.*)"
    self.test = "jdenen@cscc.edu"
  end
  
end