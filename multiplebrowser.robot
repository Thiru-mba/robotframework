*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://www.google.com/
${browser}    chrome
${url1}    https://www.bing.com/?PC=U806

*** Test Cases ***
MultipleBrowser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s

    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    Sleep    5s

    Switch Browser    1
    #assigning a variable to get the title of the website
    ${title}    Get Title
    #log to console used to print the title in the terminal while running the test
    Log To Console    ${title}

    Switch Browser    2
    ${title}    Get Title
    Log To Console    ${title}

    