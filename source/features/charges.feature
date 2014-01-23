Feature: Verify the charges

 Background:
   Given I am on the home page

  Scenario: Verify that items belongs into its charges
    Then I should see the items "Failed Charges" on the page
    And I should see the items "Dispute Charges" on the page
    And I should see the items "Successful Charges" on the page
    And I should see "successful" charges list there are 10 line items
    And I should see "failed" charges list there are 5 line items
    And I should see "disputed" charges list there are 5 line items







