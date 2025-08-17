*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome
*** Test Cases ***
Mouseaction
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    5s
    Set Selenium Speed    3s
    #run time variables only work with in this area
    ${location}    Get Location
    Log To Console    ${location}

    Go To    https://the-internet.herokuapp.com/key_presses?
    ${location}    Get Location
    Log To Console    ${location}
    
    #using go back its came to first website
    Go Back
    #get location used to getting the url
    ${location}    Get Location
    Log To Console    ${location}