*** Settings ***
Variables    ../locators/locators.py
Resource    ../keywords/Common.robot
Resource    ../keywords/LoginPage.robot
Resource    ../keywords/HomePage.robot

*** Test Cases ***
CreateLoadOrder test
    Opening Browser     https://uat.fleetpanda.com/users/login    Chrome
    Signin
    Verify Dashboard is visible
    Click Element    ${CreateLoadOrder} 
    Click Element    xpath:(//div[@class='ui-select__input-container css-ackcql'])[1]
    Press Keys    /ENTER
    Sleep    2
    #Press Keys    xpath://div[@id='NewLoadOrderTerminal']//div[@class='ui-select__input-container css-ackcql']    ENTER
    #Select From List By Index    id:NewLoadOrderTerminal    1
    Sleep    3

