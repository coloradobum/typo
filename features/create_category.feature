Feature: Create category
  As an author
  In order organize my blog posts
  I want to create new categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create new category
    Given I am on the new category page
    And I fill in the new category fields:
    |Name            |Keywords        |Permalink|Description|
    |My new category |cooking, baking |         |kitchen    |
    And I press "Save"
    Then I should be on the admin page
    And I should see "My New Category created"
