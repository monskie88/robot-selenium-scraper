*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Launch browser
    Initialize web driver

Initialize web driver
    ${chrome_options} =    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Create WebDriver    Chrome    chrome_options=${chrome_options} 
