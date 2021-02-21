*** Settings ***
Documentation  Landing page of Amazon web site
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Page Load
    Load
    Verify Page Loaded

Load
    go to  https://www.amazon.com

Verify Page Loaded
    wait until page contains  Try Prime