require 'page-object'

class ThatClassPage
  include PageObject

  page_url "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T="
  
  paragraph(:prerequisites, :xpath => '//div[@id="course-info"]/p[5]')
  
  
  link(:bookstore_link, :href => "http://bookstore.cscc.edu")
  
     
end