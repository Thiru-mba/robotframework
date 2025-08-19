#x-path
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome
*** Test Cases ***
xpath
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    5s
    # #locating element with known tagname & attribute (1)
    # Input Text    //input[@placeholder="Username"]    Admin

    # #locating element with known attribute (2)
    # Input Password    //*[@type="password"]    admin123

    # #locating element with known visible text[Exact Match] (3)
    # Click Button    //*[text()=" Login "] 
    
    Input Text    //input[@name="username"]    Admin
    Input Password    //input[@type='Password']    admin123
    #location element with multiple attributes
    Click Button    //*[@type="submit"][@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]

#location element with known visible text (partial match)
#locating element when starting visible text is known