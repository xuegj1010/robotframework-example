*** Settings ***
Documentation  Test Setup & Test teardown example
Library  SeleniumLibrary

Suite Setup  Log  Start to do something
Suite Teardown  Log  Finished to do something

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

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