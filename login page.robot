*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
# test1
#     Open Browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
#     Maximize Browser Window

userinput&password
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    Chrome
    Maximize Browser Window
    Sleep    5s
    Input Text    id:username    rahulshettyacademy
    Input Password    id:password    learning
    Click Button    signInBtn
    Close Browser

Radio_button
    Open Browser    https://rahulshettyacademy.com/loginpagePractise/    chrome
    Maximize Browser Window
    Sleep    5s
    Select Radio Button    radioButton    radio2
    Select Radio Button    radioButton    radio1 
    