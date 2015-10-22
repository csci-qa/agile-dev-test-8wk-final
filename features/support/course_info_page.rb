require 'page-object'

class CSCCCourseInfoPage
	include PageObject

	page_url "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T="

	div(:course_info, :id => "course-info")
	link(:textbook_link, :href => "http://bookstore.cscc.edu")
end