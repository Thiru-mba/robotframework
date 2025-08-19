#variable and keywords
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://rahulshettyacademy.com/loginpagePractise/
${browser}    chrome

*** Test Cases ***
test_2
    insidetest_2
#keywords
*** Keywords ***
insidetest_2
    Set Selenium Speed    5s
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Close Browser
