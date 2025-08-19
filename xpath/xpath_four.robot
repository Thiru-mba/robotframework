#x-path
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome
*** Test Cases ***
xpath
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    5s
    # Username field using parent axis
    Input Text    //input[@data-test="username"]/parent::div/child::input     standard_user
    # Password field using parent + child + following
    Input Password    //input[@data-test="username"]/parent::div/parent::form/child::div/following::div[1]/child::input    secret_sauce
    Click Button    //*[@id="login-button"]
    Close Browser

