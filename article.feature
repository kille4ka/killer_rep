Feature: Article page
  Create all types of paragraphs


  Scenario: : Creating new Article with basic content
    Given I am on "node/add"
    Then I follow "Article"
    And I should be on "/node/add/article"
    Then I fill in "Title" with "Test Article"
    And I work with "Description" WYSIWYG editor
    And I type "Lorem ipsum" in "Description" WYSIWYG editor
    And I follow "Add media"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "Media"
    Then I wait for 3 seconds
    And I fill in "Alt text" with "Alt text"
    Then I press "Save and insert"
    And I switch back from an iframe
    Then I fill in "Revision" with "Revision 1"
    When I press "Save" element
    And I wait 2 seconds
    And I should see no errors
    And I should see "Test Article page"

  Scenario: Adding Text block paragraph
    Given I am on "/test-article/edit"
    Then I click "Dropbutton arrow" element
    And I click "Add Text block" element
    And I work with "Description" WYSIWYG editor
    And I type "Lorem ipsum" in "Description" WYSIWYG editor
    Then I fill in "Revision" with "Revision 1"
    When I press "Save" element
    And I wait 2 seconds
    And I should see no errors
    Then I should see "Test Article page"
    Then I should see "Text"

  Scenario: Adding Image gallery paragraph
    Given I am on "/test-article/edit"
    When I click "Dropbutton arrow" element
    And I click "Add Image gallery" element
    And I And I follow "Add media"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "Media"
    Then I wait for 3 seconds
    And I fill in "Alt text" with "Alt text"
    Then I press "Save and select"
    And I press "Insert selected"
    And I switch back from an iframe
    Then I fill in "Revision" with "Revision 1"
    When I press "Save" element
    And I wait 2 seconds
    And I should see no errors
    And I should see "Test Article page"
    Then I should see "Image gallery slider"



