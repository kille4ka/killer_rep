Feature: Adding News item

 Scenario: Adding new News item
   When I am on "node/add"
   Then I follow "News"
   And I should be on "/node/add/news"
   Then I fill in "Title" with "Test news"
   Then I type "n" in "Category" autocomplete field
   And I wait for autocomplete to load
   And I select "News" from "Category" autocomplete field
   Then I fill in "Summary" with "Lorem ipsum"
   Then I follow "Picture"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   And I fill in the following:
     |URL       |https://www.google.com/  |
     |Link text |Read more                |
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Test news"
   Then I am on "/news"
   And I should see "Test news"