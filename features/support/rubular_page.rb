require 'page-object'

class RubularPage
  include PageObject

  div(:result, :id => "match_captures")
 
end
