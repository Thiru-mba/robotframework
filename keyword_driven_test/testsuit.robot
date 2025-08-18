*** Settings ***
Library     SeleniumLibrary
Resource    resources.robot
#It run's before every test case run
# Test Setup    browser_open
# #It run's after every test case run
# Test Teardown    browser_close
Suite Setup    browser_open
#Suite Teardown
#Test Template
*** Test Cases ***
ckbox 
    checkbox
Radio_button
    Radio_button