Feature: Adding Collaboration item

 Scenario: Adding new Collaboration item
   When I am on "node/add"
   Then I follow "Collaboration"
   And I should be on "/node/add/Collaboration"
   Then I fill in "Title" with "Test collaboration"
   Then I type "li" in "Category" autocomplete field
   And I wait for autocomplete to load
   And I select "Life science" from "Category" autocomplete field
   Then I fill in "Body" with "Lorem ipsum"
   Then I follow "Add media"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Test collaboration"
   Then I am on "/collaborations"
   And I should see "Test collaboration"

 Scenario: Adding Single image paragraph
   Given I am on "/test-collaboration/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Single image"
   Then I fill in the following:
     |Title       |Test Single image  |
     |Read time   |5 min read         |
     |Description |Lorem ipsum        |
   Then I click the element "Image"
   Then I follow "Select media"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   Then I click the element "Social block"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Test Single image"

 Scenario: Adding One column text paragraph
   Given I am on "/test-collaboration/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add One column text"
   Then I fill in "One column" with "Text"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Text"

 Scenario: Adding Image with text paragraph
   Given I am on "/test-collaboration/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Image with text"
   Then I click the element "Image"
   And I follow the "Select media"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   And I select "Right" from "Stories image position"
   Then I fill in "Text" with "Lorem ipsum"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Lorem ipsum"