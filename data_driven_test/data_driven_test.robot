*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    T:\vscode\automation\robotframework\data\ddt.xlsx

Resource    resources/resources.robot
Suite Setup    login_page
Suite Teardown    browser_close
Test Template    invalid_login

*** Test Cases ***

login
    invalid_login

*** Keywords ***
invalid_login
    [Arguments]    ${name}    ${pass}
    input_name    $name
    input_password    $pass
    Sleep    2s
    click_login
    error_message



