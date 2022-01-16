*** Settings ***
Library    Browser

*** Test Cases ***
Using Browser library
    New Browser    chromium
    New Page     http://google.com
    Fill Text    //*[@name='q']    Cheese
    Click    :nth-match(:text("Google Search"), 1)
    Click    text="Images"  
    
    Take Screenshot    