require 'watir-webdriver'
require 'page-object'

class CoursePage
  include PageObject
  
  @none_array = []
  
  page_url "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T=" 
  
  div(:course_div, :id => 'course-info')
  
  def find_none
  	@none_array.push(self.course_div)
  	@count = @none_array.find_all {|x| x == /^None$/ }.count
  	return @count
  end
  
  
end