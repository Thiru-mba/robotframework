#checkBox
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Checkbox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Select Checkbox    //input[@id="checkBoxOption2"]
    Select Checkbox    //input[@id="checkBoxOption3"]
    Select Checkbox    //input[@id="checkBoxOption1"]
    Unselect Checkbox    //input[@id="checkBoxOption3"]
    