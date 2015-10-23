require "page-object"

class RubularPage
  include PageObject
  
  div(:match_group, :id => "match_captures")
  
end