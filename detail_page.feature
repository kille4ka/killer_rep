Feature: Adding Detail page

 Scenario: Adding new Detail page with minimum content
   When I am on "node/add"
   Then I follow "Detail page"
   And I should be on "/node/add/detail_page"
   Then I fill in "Title" with "Test Detail page"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors

 Scenario: Adding Section paragraph
   Given I am on "/test-detail-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Section"
   Then I fill in the following:
     |Title       |Test Section  |
     |Description |Lorem ipsum   |
   Then I select "News" from "Background"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Test Section"

 Scenario: Adding Single image paragraph
   Given I am on "/test-detail-page/edit"
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
   Given I am on "/test-detail-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add One column text"
   Then I fill in "One column" with "Text"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Text"

 Scenario: Adding Image with text paragraph
   Given I am on "/test-detail-page/edit"
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

 Scenario: Adding One column text with title paragraph
   Given I am on "/test-detail-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add One column text with title"
   Then I fill in the following:
     |Title       |Test One column with title  |
     |One column  |Lorem ipsum                 |
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Test One column with title"

 Scenario: Adding Events listing paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Events listing"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors

 Scenario: Adding News listing paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add News listing"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "News"

 Scenario: Adding Services listing paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Services listing"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors


 Scenario: Adding Collaborations listing paragraph
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Collaborations listing"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Filter by:"

 Scenario: Adding Partners paragraph
   Given I am on "/test-basic-page/edit"
   Then I select "Memberships" from "Display"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   Then I should see "Memberships"


 Scenario: Adding Stories item
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add Stories item"
   Then I fill in "Label" with "Out stories"
   Then I follow "Stories image"
   And I wait 3 seconds
   Then I switch to an iframe "mediaBrowser"
   And I attach the file "test1.jpg" to "Media"
   Then I wait for 3 seconds
   And I fill in "Alt text" with "Alt text"
   Then I click the element "Save and insert"
   And I switch back from an iframe
   And I fill in the following:
     |Stories title       |Test story title  |
     |Stories description |Lorem ipsum       |

   And I select "Left" from "Stories image position"
   Then I type "ad" in "URL" autocomplete field
   And I wait for autocomplete to load
   And I select "Ada health" from "URL" autocomplete field
   And I fill in "Link text" with "Read more"
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Our stories"


 Scenario: Adding About team slider wrapper
   Given I am on "/test-basic-page/edit"
   Then I click the element "Dropbutton Arrow"
   And I click the element "Add About team slider wrapper"
   Then I fill in "About team slider title" with "Test team"
   And I attach "test1.jpg" to "About team image"
   And I fill in the following:
     |About team twitter link  |https://twitter.com/      |
     |About team linkedin link |https://www.linkedin.com/ |
     |About team xing link     |https://www.xing.com/     |
     |Name                     |John Dou                  |
     |Description              |Test position             |
   Then I fill in "Revision log message" with "Revision 1"
   When I click the element "Save"
   And I wait 2 seconds
   And I should see no errors
   And I should see "Test team"

