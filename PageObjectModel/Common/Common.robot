*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py



*** Keywords ***
Opening Browser

    Open Browser   https://opensource-demo.orangehrmlive.com/    chrome
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5
