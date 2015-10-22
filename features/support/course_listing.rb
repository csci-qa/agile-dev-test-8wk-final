require "watir-webdriver"
require "page-object"

class CourseListing 
  include PageObject
  
  page_url "http://www.cscc.edu"

end