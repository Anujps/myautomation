*** Settings ***
Documentation  Handling Dropdown, Checkbox, and Radio Buttons in Robot Framework
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Validate user can select items from the dropdown
    [documentation]  This test case verifies that the user can select values from the dropdown and verify it
    [tags]  Smoke
    Open Browser  https://the-internet.herokuapp.com/dropdown  Chrome
    Wait Until Element Is Visible  id:dropdown  timeout=5
    Select From List By Index  id:dropdown  1
    Sleep    3
    Select From List By Index    id:dropdown    2
    #List Selection Should Be  id:dropdown  Option 1
    #Select From List By Value  id:dropdown  2
    #List Selection Should Be  id:dropdown  Option 2
    Sleep    3
    Close Browser