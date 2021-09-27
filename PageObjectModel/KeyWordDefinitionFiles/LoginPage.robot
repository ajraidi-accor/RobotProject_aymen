*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py


Library    DataDriver    Data.xlsx

*** Keywords ***
Input Text Login
    input text     ${LoginUsernameInputBox}     ${Username}
input Text password
    Input Password   ${LoginPasswordInputBox}    ${Password}
Click Login
    Click Element  ${LoginButton}
verify message
    Element Should Contain  ${LoginFailedMessage}    ${Message}
test aymen
