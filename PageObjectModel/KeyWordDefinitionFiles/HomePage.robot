*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/TestData.py
Library  SeleniumLibrary




*** Keywords ***
Verify Welcome Text is Visible
    wait until element is visible    ${WelcomeText}  timeout=5

Logout
    CLick Element  ${WelcomeText}
    wait until element is visible   ${WelcomeMenu}
    click element    ${WelcomeMenu}
    click element    ${LogoutPassword}