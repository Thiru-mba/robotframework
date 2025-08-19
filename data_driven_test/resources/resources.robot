*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

login_page
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Maximize Browser Window
    Sleep    5s

browser_close
    Close All Browsers

input_name
    [Arguments]    ${name}
    Input Text    //input[@name="username"]    ${name}

input_password
    [Arguments]    ${pass}
    Input Password    //input[@type="password"]    ${pass}

click_login
    Click Button    //button[@type="submit"]

error_message
    Page Should Contain    Invalid credentials
