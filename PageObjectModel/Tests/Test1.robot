*** Settings ***
Library               OperatingSystem
Library               SeleniumLibrary

Resource              ../Common/Common.robot



Library    DataDriver    Data.xlsx    sheet_name=Sheettestlogin


Suite Setup    Opening Browser
Test Template  Verify Login to OrangeHRM
Suite Teardown    Close Browser
*** Test Cases ***
Verify Login to OrangeHRM ${Username} ${Password}

*** Keywords ***
Verify Login to OrangeHRM
    [Arguments]    ${Username}    ${Password}
    input text        ${LoginUsernameInputBox}     ${Username}
    Input Password    ${LoginPasswordInputBox}     ${Password}
    Click Element  ${LoginButton}
    wait until element is visible    ${WelcomeText}  timeout=5
    CLick Element  ${WelcomeText}
    wait until element is visible   ${WelcomeMenu}
    click element    ${WelcomeMenu}
    click element    ${LogoutPassword}
    sleep    6S

