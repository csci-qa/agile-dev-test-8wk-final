require "page-object"

class ResultsPage
  include PageObject
  
  div(:result_number, :id => "resInfo-0")
  link(:first_result, :class => "gs-title", :index => 0)

  
end