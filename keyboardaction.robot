*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}    https://the-internet.herokuapp.com/key_presses
${browser}    chrome

*** Test Cases ***
Keyboardaction
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Press Key    //input[@id="target"]    ENTER
    Sleep    2s
    Press Key    //input[@id="target"]    SPACE 