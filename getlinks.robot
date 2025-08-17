*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
getlinks
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize Browser Window
    Sleep    5s
    ${linkcount}    Get Element Count    //div
    Log To Console    ${linkcount}
    #creating a list
    ${linkitem}    Create List
    FOR    ${i}    IN RANGE    ${linkcount}
        ${linkitem}    Get Text    //div
        Log To Console    ${linkitem}
        
    END