*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Open Android Application
    [Arguments]   ${appActivity}=${EMPTY}
    open application
    ...   http://sony:8888/wd/hub
    ...   automationName=UIAutomator2
    ...   app=${CURDIR}/../applications/Android.apk
    ...   platformName=Android
    ...   platformVersion=11
    ...   appPackage=io.appium.android.apis
    ...   appActivity=${appActivity}
