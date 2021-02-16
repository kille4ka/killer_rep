Feature: Adding image to a library
  As a user I add image with annotation to media library
  Scenario: Adding image to a library
    Given I am on "/admin/content/media"
    Given I follow "+Add content"
    Then I should see "Add media item"
    Then I follow "Image"
    And I should see "Add image"
    Then I fill in the following:
      | Name                       | Test image       |
      | Annotation                 | Annotation       |

    And I attach the file "test1.jpg" to "Media"
    And I fill in "Alt text" with "Alt text"
    When I press "Save"
    Then I should see "Image Test image has been created."




