Feature: Adding Cocreate page

 Scenario: Adding new Cocreate page with minimum content
   When I am on "node/add"
   Then I follow "Cocreate"
   And I should be on "/node/add/cocreate"
   Then I fill in "Title" with "Test Cocreate page"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors

 Scenario: Adding Cocreate page title paragraph
   Given I am on "/test-cocreate-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Cocreate page title"
   Then I fill in the following:
     |Title       |Test Cocreate  |
     |Description |Lorem ipsum    |
     |URL         |/services      |
     |Link text   |Our services   |
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Test Cocreate"


 Scenario: Adding Latest collaborations paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Latest collaborations"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors

 Scenario: Adding Latest news paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Latest news"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors

 Scenario: Adding Cocreate stories item
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Cocreate stories item"
   Then I fill in "Label" with "Out stories"
   And I fill in the following:
     |Cocreate stories title       |Test title      |
     |Cocreate stories subtitle    |Subtitle        |
     |Cocreate stories description |Test description|
   Then I click "Cocreate stories media"
   Then I follow "Select media"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   And I select "Left" from "Cocreate stories image pos"
   And I select "Grey" from "Cocreate stories background"
   Then I type "ad" in "URL" autocomplete field
   And I wait for autocomplete to load
   And I select "Ada health" from "URL" autocomplete field
   And I fill in "Link text" with "Read more"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Our stories"



