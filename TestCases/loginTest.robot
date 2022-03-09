*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/loginKeywords.robot

*** Variables ***
${url}      https://www.bdjobs.com/
${browser}      chrome
${email}      rm.qups@gmail.com
${password}      rm123456789

*** Test Cases ***
Login Test
    Open my browser    ${url}   ${browser}
    Login   ${email}    ${password}
    Close my browser
    Verify Succesfull login

