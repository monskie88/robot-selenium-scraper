*** Settings ***
Library           Zoomba.DesktopLibrary
Library    OperatingSystem

*** Variables ***
${REMOTE_URL} =    http://localhost:8080/wd/hub
${APP} =           C:/Windows/System32/calc.exe
*** Keywords ***
Start app
    Driver Setup
    Open Application    ${REMOTE_URL}     platformName=windows    deviceName=windows   app=${APP}   desktop_alias=Desktop2
    Maximize Window
    Switch Application By Locator    ${REMOTE_URL}     class=Notepad

*** Test Cases ***
Notepad Sample
    Start app
    Switch Application    Desktop2
    Wait For And Input Text          Name=Text Editor      test
    Wait Until Element Contains      Name=Text Editor      test
    Quit Application
    Wait For And Click Element       Name=Don't Save

    



