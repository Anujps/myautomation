*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py
Variables    ../test/testdata.py

*** Keywords ***
Verify Dashboard is visible
    Wait Until Page Contains    Dashboard

Logout
    Click Element    ${LogoutButton}
    