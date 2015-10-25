require 'page-object'

class CSCCSearchResultsPage
	include PageObject
    
    div(:results, :class => "gs-title", :index => 0)
    div(:number_of_results, :id => "resInfo-0")
	link(:course_link, :href => "http://global.cscc.edu/courses/course.asp?Z=&D=B&Q=SP&Y=16&C=CSCI-2994&T=")
end