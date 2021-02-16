Feature: Article text size
  Scenario: Adjust text size
    Given I am on "/node/86"
    Then I should see "Increase text size:"
    When I click "size-1" element
    Then "font-size" is equal to "18px"
    When I click "size-2" element
    Then "font-size" is equal to "21px"
    When I click "size-3" element
    Then "font-size" is equal to "24px"
