*** Settings ***
Library           Selenium2Library

*** Test Cases ***
login
    Open browser    https://www.saucedemo.com/    firefox    Close Browser
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user

emply_usercase
    Open browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    ${EMPTY}
    Selenium2Library.Input Password    //*[@id="password"]    secret_sauce
    Selenium2Library.Click Button    //*[@id="login-button"]
    Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]/h3    Epic sadface: Username and password do not match any user in this service
    Close Browser
