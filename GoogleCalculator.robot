*** Settings ***
Documentation   Robot Framework Demo
Library         RequestsLibrary

*** Variables ***
${url}          https://www.google.com/search?q=

*** Test Cases ***
Find Result
    search  1111*1111        1234321
    search  11111*11111      123454321
    search  111111*111111    12345654321
    search  1111111*1111111  1234567654321

*** Keywords ***
search
    [arguments]     ${item}  ${expect}
    log to console  \n\t${expect}   no_newline=true
    create session    alias         ${url}${item}
    ${resp}=          get request   alias  /
    status should be  200           ${resp}
    should contain    ${resp.text}  ${expect}
    delete all sessions
