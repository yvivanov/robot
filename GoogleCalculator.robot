*** Settings ***
Documentation   Robot Framework Demo
Library         RequestsLibrary

*** Variables ***
${url}          https://www.google.com/search?q=

*** Test Cases ***
Find Results
    [Template]  The search of ${item} returns ${expected}
        1111*1111        1234321
        11111*11111      123454321
        111111*111111    12345654321
        1111111*1111111  1234567654321

*** Keywords ***
The search of ${item} returns ${expected}
    create session    alias        ${url}${item}
    ${out} =          get request  alias  /
    status should be  200          ${out}
    should contain    ${out.text}  ${expected}
    delete all sessions
