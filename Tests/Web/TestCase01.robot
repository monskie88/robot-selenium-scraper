*** Settings ***
Resource    ../../Resources/Comon.robot

*** Test Cases ***
Test Case 01
    Launch browser
    Go To    https://www.google.com/
    Input Text    //*[@title='Search']    robot framework
    Press Keys    //*[@title='Search']    RETURN
    Click Link    https://robotframework.org/
    Title Should Be    Robot Framework
    Page Should Contain    ROBOT FRAMEWORK1

Test Case in Gherkin
    Given User in RobotFramework Page
    When Navigates to "Tools"
    Then Page Should Contain Link    Let us know

*** Keywords ***
User in RobotFramework Page
    Launch browser
    go to    https://robotframework.org/
    Title Should Be    Robot Framework
    Page Should Contain    ROBOT FRAMEWORK

Navigates to "${menu}"
    Wait Until Page Contains Element    //li//*[contains(text(),'${menu}')]
    Click Element    //li//*[contains(text(),'${menu}')]
    Capture Page Screenshot
