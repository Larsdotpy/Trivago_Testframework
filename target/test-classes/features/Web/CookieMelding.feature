@Web @Regression
  Feature: When a user lands on the main page
    the expected behavior of the website is to show a pop up of a cookie notification

  Scenario: Cookie notification on main page
    Given User navigates to the homepage
    Then Cookie popup is displayed
