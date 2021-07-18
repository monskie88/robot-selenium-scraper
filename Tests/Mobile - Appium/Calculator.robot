*** Settings ***
Library    AppiumLibrary    
*** Variables ***
${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9.0
${DEVICE_NAME}    JUC7N18807011192
${Activity_NAME}        com.android.calculator2.Calculator
${PACKAGE_NAME}     com.android.calculator2
*** Keywords ***
Open calculator
  Open Application   ${REMOTE_URL}
  ...        platformName=${PLATFORM_NAME}
  ...    platformVersion=${PLATFORM_VERSION}
  ...   deviceName=${DEVICE_NAME}
  ...   automationName=UiAutomator2
    ...    newCommandTimeout=2500
    ...    appActivity=${Activity_NAME}
    ...    appPackage=${PACKAGE_NAME}
*** Test Cases ***
First Test cases
    Open calculator
    Click Element    com.android.calculator2:id/digit_6
    Click Element    com.android.calculator2:id/op_add
    Click Element    com.android.calculator2:id/digit_9
    Element Text Should Be      com.android.calculator2:id/result    15
    Click Element    com.android.calculator2:id/eq
    Element Text Should Be  com.android.calculator2:id/formula    15
    Capture Page Screenshot