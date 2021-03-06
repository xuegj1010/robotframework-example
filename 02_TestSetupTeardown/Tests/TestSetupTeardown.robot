*** Settings ***
Documentation    Test Setup & Test Teardown example
Library  SeleniumLibrary

Test Setup  Open Browser  about:blank  ${BROWSER}
Test Teardown   Close All Browsers

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Test Case 1
    Check if Python web site is up and running

Test Case 2
    Check if GitHub web site is up and running

*** Keywords ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    go to  https://www.python.org
    wait until page contains  Python

Check if GitHub web site is up and running
    [Documentation]  This is Robot site test
    [Tags]  GitHub
    go to  https://github.com/xuegj1010
    wait until page contains  xuegj1010