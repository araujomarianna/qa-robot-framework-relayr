*** Settings ***
Documentation  These tests verify the Search functionality on Google site
...  The tests are All pairs technique based.
...  The Test cases design considered two variables:
...  Searching Key (Empty or Not Empty) and
...  Kind of Searching (Search or I'm feeling luck buttons).

Resource  Resource.robot
Suite Teardown  Close all browsers

*** Test Cases ***
Search for a non-empty searching key on Google
    Given Google webpage is opened
    When a searching key "relayr jobs" is inserted
    And clicking on Search button
    And the first result is selected
    Then the correct webpage should be opened

Search for a non-empty key on Google using "I'm feeling luck"
    Given Google webpage is opened
    When a searching key "relayr jobs" is inserted
    And clicking on I'm feeling luck button
    Then the correct webpage should be opened

Search for an empty searching key on Google
    Given Google webpage is opened
    When a searching key "" is inserted
    And click on search button
    Then navigating keeps on Google webpage

Search for an empty searching key on Google using "I'm feeling luck"
    Given Google webpage is opened
    When a searching key "" is inserted
    And clicking on I'm feeling luck button
    Then navigating goes to Google Doodles

*** Keywords ***
Google webpage is opened
    Launch Google webpage

A searching key "${KEY}" is inserted
    Search for a key "${KEY}"

Clicking on Search button
    Click on Search button

The first result is selected
    Click on the first searching result

The correct webpage should be opened
    Verify if the correct webpage is open

Clicking on I'm feeling luck button
    Click on I'm feeling luck button

Navigating keeps on Google webpage
    Check if the webpage is Google main page

Navigating goes to Google Doodles
    Check if the webpage goes to Google Doodles
