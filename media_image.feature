@d7 @javascript @api @wysiwyg @user @drush
Feature: Leave pop up
  Scenario: "Adding image to a library"
    Given I am on "/admin/content/media"
    Given I Then I follow "+Add content"
    Then I should see "Add media item"
    Then I Then I follow "Image"
    And I should see "Add image"
    Then I fill in the following:
      | edit-name-0-value                       | Test image       |
      | edit-field-annotation-0-value           | Annotation       |

    And I attach the file "test1.jpg" to "files[field_media_image_0]"
    And I fill in "edit-field-media-image-0-alt--1_wmAW9x22U" with "Alt text"
    When I press "Save"
    Then I should see "Image Test image has been created."




