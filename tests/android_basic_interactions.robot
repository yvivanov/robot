*** Settings ***
Documentation   Android Basic Interactions
Resource        ../resources/setup.robot
Test Teardown   Close Application

*** Test Cases ***
Send keys to search box then check the value
    Open Android Application            .app.SearchInvoke
    input text                          txt_query_prefill  Hello world!
    click element                       btn_start_search
    wait until page contains element    android:id/search_src_text
    element text should be              android:id/search_src_text  Hello world!

Click alert button then dismiss it
    Open Android Application            .app.AlertDialogSamples
    click element                       two_buttons
    wait until page contains element    android:id/alertTitle
    element should contain text         android:id/alertTitle  Lorem ipsum dolor sit aie consectetur adipiscing
    ${close_button}  get webelement     android:id/button1
    click element                       ${close_button}
