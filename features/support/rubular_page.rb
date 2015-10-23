require "watir-webdriver"
require "page-object"

class RubularPage
  include PageObject
  
  page_url "www.rubular.com"

  text_field(:reg_ex_field, :id => 'regex')
  text_area(:test_field, :id => 'test')
  span(:match_span, :class => 'match')
  div(:match_div, :id => 'match_captures')
    
  def enter_data
    self.reg_ex_field = "(.*)@(.*)\\.(.*)"
    self.test_field = "jdenen@cscc.edu"
    sleep 2
  end
  
  def get_match_string
    return match_span
  end
  
  def get_match_group
    return match_div
  end
end