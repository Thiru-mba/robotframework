*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome
*** Test Cases ***
alerts
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Set Selenium Speed    3s
    Click Element    //button[text()='Simple Alert']
    Handle Alert    accept
    Click Element    //button[text()='Confirmation Alert'][@id="confirmBtn"]
    Handle Alert    dismiss
    