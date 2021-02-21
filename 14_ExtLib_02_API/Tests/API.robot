*** Settings ***
Documentation     example for test API
Suite Teardown    Delete All Sessions
Library           RequestsLibrary
Library           SeleniumLibrary

*** Variables ***
${GITHUB_SESSION}    ${EMPTY}

*** Test Cases ***
Check Github Username
    # Create the session
    Create Session    ${GITHUB_SESSION}    https://api.github.com
    # GET Chris Wanstrath's GitHub profile:
    ${response} =    GET On Session    ${GITHUB_SESSION}    users/defunkt
    # Check the response status
    should be equal as strings    ${response.status_code}    200
    # Check the response body
    ${json} =    set variable    ${response.json()}
    should be equal as strings    ${json['login']}    defunkt
    Log    ${json}

Display Emoji
    # GET emojis. Use the same session created above.
    ${response} =    GET On Session    ${GITHUB_SESSION}    emojis
    # Check the response status
    should be equal as strings    ${response.status_code}    200
    # Check the response body
    ${json} =    set variable    ${response.json()}
    ${emoji_url} =    set variable    ${json['alarm_clock']}
    open browser    ${emoji_url}    chrome
    close browser

*** Keywords ***
