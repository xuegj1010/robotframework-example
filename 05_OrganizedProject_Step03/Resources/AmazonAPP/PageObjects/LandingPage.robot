*** Settings ***
Documentation  Landing page of Amazon web site
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Page Load
    Load
    Verify Page Loaded

Load
    go to  http://www.amazon.com

Verify Page Loaded
    wait until page contains  Sign in for the best experience