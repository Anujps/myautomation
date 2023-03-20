*** Settings ***
Variables    ../locators/locators.py
Resource    ../keywords/Common.robot
Resource    ../keywords/HomePage.robot
Resource    ../keywords/LoginPage.robot
Resource    ../test/test.robot


*** Variables ***


*** Test Cases ***    
CreateOrderTest
    Opening Browser     https://uat.fleetpanda.com/users/login    Chrome
    Maximize Browser Window
    Signin
    Click Element    ${CreateOrder}    
    Wait Until Page Contains Element    id:customerSelect
    Input Text    id:customerSelect     Jay small moves
    Sleep    2
    Double Click Element    xpath://*[@id="customerOptions"]/li
    sleep    3
    Select From List By Index    xpath://*[@id="branchSelect"]    1
    Wait Until Element Is Enabled     xpath://*[@id="searchBtn"] 
    Click Element    xpath://*[@id="searchBtn"]    #Create Order button
    Wait Until Location Is    https://uat.fleetpanda.com/delivery_orders/new
    Wait Until Element Is Visible    xpath://*[@id="deliveryOrderWrapper"]/div[3]/div[1]/label/i
    
    #check marks on Gssf
    Click Element    xpath://*[@id="deliveryOrderWrapper"]/div[3]/div[1]/label/i
    Input Text    name:asset_volume    23
    Sleep    3
    #check marks on Another Vehicle
    Click Element    xpath://*[@id="deliveryOrderWrapper"]/div[3]/div[2]/label/i
    Sleep    3
    # top off toggle button
    Click Element    xpath://*[@id="topOffSelector"]/span[2]/small
    Sleep    3
    #delivery instruction
    Input Text    name:delivery_instructions   Look out for the angry dog
    Sleep        3
    #selecting hubs from the dropdown menu
    #Select From List By Label    id:select2-hub-select-container    ShipTo A
    #choosing a driver
    Click Element    xpath://span[contains(text(),'Select Driver')]    
    Input Text    xpath:/html/body/span/span/span[1]/input    test test
  #  Click Element    /html/body/span/span/span[1]/input
    Press Keys    xpath:/html/body/span/span/span[1]/input    ENTER      
    
    #create order button 
    Click Button    ${CreateOrder_btn}
    #Click Element   
    Sleep    3
    




    
    


*** Keywords ***

