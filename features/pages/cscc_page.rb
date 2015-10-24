require 'page-object'

class HomePage
  include PageObject

  page_url "http://cscc.edu/"

  link(:results, :class => "gs-title")


  def input_search
  	browser.text_field(:id => "input").set "csci 2994"
  	
  end

  def click_search
  	browser.button(:name => 'sa').click
  end

  def select_link
  	browser.link(:class => "gs-title").click
  end

end	