@example-Feature:

Feature: Examples

  Scenario: Looking at the Build analytics data layer
    Given I visit "https://www.build.com/"
    And I reload the page a couple times to close the pop-ups
    And I should see the following page elements in the data layer
      | data_element        | data_type |
      | eVar.eVar13         | String    |
      | eVar.eVar60         | String    |
      | eVar.eVar74         | String    |
      | eVar.eVar74         | String    |
      | channel             | String    |
      | emailSignup         | FalseClass|
      | pageName            | String    |
      | sProp.prop11        | String    |
      | sProp.prop19        | String    |
      | serverName          | String    |
      | siteName            | String    |
    But more importantly these elements should return expected values
      | data_element               | data_value |
      | page                       | main:hom  |
      | omniture.reportSuiteId     | buildcom   |

    

  Scenario: Looking at the Build analytics data layer on next page
    Given I then visit "https://www.build.com/bathroom"
    And I reload the next page a couple times to close the pop-ups
    And I should see the new following page elements in the data layer
      | data_element        | data_type |
      | eVar.eVar13         | String    |
      | eVar.eVar60         | String    |
      | eVar.eVar74         | String    |
      | eVar.eVar74         | String    |
      | channel             | String    |
      | emailSignup         | FalseClass|
      | pageName            | String    |
      | sProp.prop11        | String    |
      | sProp.prop19        | String    |
      | serverName          | String    |
      | siteName            | String    |
    But more importantly these new page elements should return expected values
      | data_element               | data_value |
      | pageName                   | www.build.com:category:108412:Bathroom  |
      | omniture.reportSuiteId     | buildcom   |