*** Settings ***
Library  AppiumLibrary

*** Keywords ***
Open Android Application
    [Arguments]   ${appActivity}=${EMPTY}
    open application
    ...  http://127.0.0.1:8888/wd/hub
    ...  automationName=UIAutomator2
    ...  app=${CURDIR}/../applications/Android.apk
    ...  platformName=Android
    ...  platformVersion=11
    ...  appPackage=io.appium.android.apis
    ...  appActivity=${appActivity}

Open iOS Application
    open application
    ...  http://127.0.0.1:8888/wd/hub
    ...  automationName=XCUITest
    ...  app=${CURDIR}/../applications/Apple.app.zip
    ...  platformName=iOS
    ...  platformVersion=12.1
    ...  deviceName=iPhone 8