Feature: Adding Service item

 Scenario: Adding new Service item
   When I am on "node/add"
   Then I follow "Service"
   And I should be on "/node/add/service"
   Then I fill in "Title" with "Test service"
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
   And I should see "Test service"
   Then I am on "/services"
   And I should see "Test service"

 Scenario: Adding Single image paragraph
   Given I am on "/test-service/edit"
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
   Given I am on "/test-service/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add One column text"
   Then I fill in "One column" with "Text"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Text"

  Scenario: Adding Key points paragraph
   Given I am on "/test-service/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Key points"
   Then I fill in the following:
     |Title                 |Test Keypoints    |
     |Description           |Lorem ipsum       |
     |Key points item title |Lorem             |
   And I select "Clock" from "Icon image"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Test Keypoints"

