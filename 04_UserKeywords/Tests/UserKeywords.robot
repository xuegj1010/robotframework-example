*** Settings ***
Documentation  How to use KW  example
Library  SeleniumLibrary

Suite Setup  Log  Start to do something
Suite Teardown  Log  Finished to do something

Test Setup  open browser  about:blank  ${BROWSER}
Test Teardown  close browser

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Check if Python web site is up and running
    [Documentation]  This is Python site test
    [Tags]  python
    Test Python site

Check if GitHub web site is up and running
    [Documentation]  This is GitHub site test
    [Tags]  GitHub
    Test GitHub site

*** Keywords ***
Test Python site
    go to  https://www.python.org
    wait until page contains  Python

Test GitHub site
    go to  https://github.com/xuegj1010
    wait until page contains  xuegj1010