*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py
Variables    ../test/testdata.py

*** Keywords ***
Opening Browser
    [Arguments]    ${site_url}    ${browser}
    Open Browser    ${site_url}    ${browser}
    Wait Until Element Is Visible    ${LoginUsernameInputbox}
