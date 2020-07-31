*** Settings ***
Resource       ../resources/setup.robot
Test Setup     Open iOS Application
Test Teardown  Close Application

*** Test Cases ***
Send keys to inputs
    ${text_field}   get webelement          TextField1
    ${value}        get element attribute   ${text_field}   value
    should be equal                         ${value}        ${None}
    input text                              ${text_field}   Hello World!
    ${value2}       get element attribute   ${text_field}   value
    should be equal                         ${value2}       Hello World!

Click alert button
    click element                           show alert
    ${alert}  get webelement                accessibility_id=Cool title
    ${title}  get element attribute         ${alert}        name
    should be equal                         ${title}        Cool title
