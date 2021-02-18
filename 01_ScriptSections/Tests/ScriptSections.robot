*** Settings ***
Documentation  This is some basic info about the whole suite

Library  Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***
Test Case 1
    Check if Python web site is up and running

Test Case 2
    Check if Robot web site is up and running

Test Case 3
    Check if GitHub Web Site is up and running

*** Keyword ***
Check if Python web site is up and running
    [Documentation]  This is python site test
    [Tags]  python
    open browser  https://www.python.org/  ${BROWSER}
    wait until page contains  Python
    close browser

Check if Robot web site is up and running
    [Documentation]  This is robot site test
    [Tags]  robot
    open browser  http://robotframework.org/  ${BROWSER}
    wait until page contains  Robot Framework
    close browser

Check if GitHub Web Site is up and running
    [Documentation]  This is robot site test
    ...             if you  will be know this, maybe will happening something 
    [Tags]  GitHub
    open browser  https://github.com/OlgaKuklina  ${BROWSER}
    wait until page contains  Olga Kuklina
    close browser