*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
browser_open
    Open Browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize Browser Window
    Sleep    3s

dd 
    Set Selenium Speed    2s
    Select From List By Index    //select[@id="dropdown-class-example"]    2
    Select From List By Label    //select[@id="dropdown-class-example"]    Option1
    Select From List By Value    //select[@id="dropdown-class-example"]    option3

checkbox
    Set Selenium Speed    2s
    Select Checkbox    //input[@id="checkBoxOption2"]
    Select Checkbox    //input[@id="checkBoxOption3"]
    Select Checkbox    //input[@id="checkBoxOption1"]
    Unselect Checkbox    //input[@id="checkBoxOption3"]
Radio_button
    Select Radio Button    radioButton    radio2
    Select Radio Button    radioButton    radio1
browser_close
    Close All Browsers
    