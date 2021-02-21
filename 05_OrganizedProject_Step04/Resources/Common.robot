*** Settings ***
Documentation  All common functionality goes here
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Suite
    Log  Test Suite begins

End Suite
    Log  Test Suite over

Begin Test With Browser
    [Arguments]  ${browser}
    Open browser  about:blank  ${browser}

End Test
    close browser