*** Settings ***
Library     SeleniumLibrary
Resource    resources.robot
#It run's before every test case run
# Test Setup    browser_open
# #It run's after every test case run
# Test Teardown    browser_close
#It run only one's before the test cases starts run
Suite Setup    browser_open 
Suite Teardown    browser_close 
#Test Template

*** Test Cases ***
ckbox 
    checkbox
Radio_button
    Radio_button