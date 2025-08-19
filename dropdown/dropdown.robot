#Dropdown using Index, Label, Value
*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://rahulshettyacademy.com/AutomationPractice/
${id_index}    //select[@id="dropdown-class-example"]
*** Test Cases ***
dropdown_index
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5s
    Select From List By Index    ${id_index}    2
# Lable 
    Select From List By Label    ${id_index}    Option1
# value
    Select From List By Value    ${id_index}    option3
    Unselect From List By Index    ${id_index}    option2
    