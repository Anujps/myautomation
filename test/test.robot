*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/LoginPage.robot
Resource    ../keywords/HomePage.robot
Resource    ../keywords/Common.robot  
Variables    ../test/testdata.py

*** Variables ***
${site_url}    https://uat.fleetpanda.com/users/login
${browser}    Chrome

*** Test Cases ***
Verify login
    [Documentation]    This test case verifies that the user is succesfully able to login then Logout
    [Tags]    smoke
    Opening Browser    ${site_url}    ${browser}
    Input Username
    Input password
    Click login
    Verify Dashboard is visible
    Close Browser

Verify wrong login
    [Documentation]    this test verifies that the user is not able to login with incorrect credentials
    Opening Browser    ${site_url}    ${browser}
    Input Text    ${LoginUsernameInputBox}    ${username2}
    Input Text    ${LoginPasswordInputBox}    ${password2}
    Click login
    Wait Until Page Contains    registered
    Close Browser


*** Keywords ***


