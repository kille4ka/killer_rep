
Feature: Self Identity tool

  Scenario: Adding Identity tool paragraph
    Given I am on "node/add"
    Then I follow "Basic page"
    And I should be on "/node/add/basic_page"
    Then I fill in "Title" with "Your inner critic"
    And I fill in "Body" with "Description"
    Then I click the element "Dropbutton Arrow"
    And I click the element "Add Identity tool"
    And I click the element "Display title"
    Then I fill in "Revision" with "Revision 1"
    When I click the element "Save"
    And I wait 2 seconds
    And I should see no errors
    And I should see "This Is How To Help Quiet Your Inner Critic"

  Scenario: Adding Identity tool taxonomy terms
    Given I am on "/admin/structure/taxonomy/manage/identity_tool_images/overview"
    And I follow "+Add term"
    Then I fill in "Name" with "Term name"
    Then I follow "Add media"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "Media"
    Then I wait for 3 seconds
    And I fill in "Alt text" with "Alt text"
    Then I click the element "Save and insert"
    When I click the element "Save"
    And I wait 2 seconds
    And I should see no errors


  Scenario: Self Identity tool verification
    Given I am on "/your-inner-critic"
    When I click the element "Get started"
    And I wait for "5" seconds
    Then I click the element "1"
    And I click the element "2"
    And I click the element "3"
    And I click the element "4"
    And I click the element "5"
    And I click the element "6"
    And I click the element "7"
    And I click the element "8"
    And I click the element "9"
    And I click the element "10"
    And I click the element "11"
    And I click the element "12"
    And I click the element "Continue"
    Then I should see "This Is The True You"
    When I click the element "Download"
    Then I switch to "/sites/default/files/identity_tool/This_is_your_true_you_dzmeIMGXarysobq.jpeg"
    Then I switch back to "/your-inner-critic"
    And I should see "You Did It!"
    Then I switch to popup by clicking link "Email"
    And I fill in the following:
      |First name    |   Ann              |
      |Email address |   test@test.com    |
    Then I click the element "Submit"
    And I should see "On the way"
    When I click the element "Restart"
    Then I should see "This Is How To Help Quiet Your Inner Critic"
     
     
     
