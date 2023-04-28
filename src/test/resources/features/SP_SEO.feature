#Search Engine Exercise
#JIRA ticket
#Author: Sweta Patnaik


@predefined
Feature: Search Engine Scenarios
  @predefined1
  @regression
  Scenario: Search Engine for Google
    Given I open url "https://www.google.com/"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='cnt']" to be present
    And I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='cnt']" should contain text "cucumber"
    