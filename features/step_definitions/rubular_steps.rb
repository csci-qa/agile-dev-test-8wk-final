Given /^I am on the Rubular home page$/ do 
  @page = RubularPage.new @browser
  @page.goto
end

When /^I enter the regex$/ do
  @page.enter_regex
end

And /^I enter jdenen@cscc.edu$/ do
  @page.enter_test
end

Then /^the match result is jdenen@cscc.edu$/ do
  sleep 5
  expect(@page.html).to include('<span class="match">jdenen@cscc.edu</span>')
  #have_tag("span",  :text => "jdene@cscc.edu") 
end

And /^returns three match groups on new lines with index$/ do
  expect(@page.html).to include("<table>
        <tbody>
             <tr><td>1.</td><td>jdenen</td></tr> 
             <tr><td>2.</td><td>cscc</td></tr> 
             <tr><td>3.</td><td>edu</td></tr> 
        </tbody>
      </table>")
end

