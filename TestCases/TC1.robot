*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser    https://www.bdjobs.com/     chrome
    Maximize Browser Window
    Click Element   xpath://*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a
    Click Link    xpath://*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/ul/li/div[1]/div[2]/div[3]/a[1]\
    Input Text    id:TXTUSERNAME    rm.qups@gmail.com
    Click Element   xpath://*[@id="form1"]/div[2]/div/div[2]/div/div[2]/input
    Input Text    id:TXTPASS    rm123456789
    Click Element    xpath://*[@id="form1"]/div[2]/div/div[2]/div/div[2]/input
    Close Browser


*** Keywords ***