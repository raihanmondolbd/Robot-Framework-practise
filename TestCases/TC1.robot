*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${url}      https://www.bdjobs.com/
${browser}      chrome

*** Test Cases ***
LoginTest
    Open Browser    https://www.bdjobs.com/     chrome
    Maximize Browser Window
    LoginToApplication
    Close Browserf


*** Keywords ***
LoginToApplication
    Sleep    3
    Click Element   xpath://*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a
    Sleep    2
    Click Link    xpath://*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/ul/li/div[1]/div[2]/div[3]/a[1]\
    Sleep    2
    Input Text    id:TXTUSERNAME    rm.qups@gmail.com
    Sleep    2
    Click Element   xpath://*[@id="form1"]/div[2]/div/div[2]/div/div[2]/input
    Sleep    2
    Input Text    id:TXTPASS    rm123456789
    Sleep    2
    Click Element    xpath://*[@id="form1"]/div[2]/div/div[2]/div/div[2]/input
