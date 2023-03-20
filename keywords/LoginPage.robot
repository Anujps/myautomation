*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py
Variables    ../test/testdata.py

*** Variables ***

*** Keywords ***
Input Username
    Input Text    ${LoginUsernameInputbox}     ${username}    

Input password
    Input Text    ${LoginPasswordInputBox}    ${password}

Click login
    Click Element    ${SigninButton}
    

Signin
    Input Text    ${LoginUsernameInputbox}     ${username}    
    Input Text    ${LoginPasswordInputBox}    ${password}
    Click Element    ${SigninButton}

Signout
    
    
    
    

