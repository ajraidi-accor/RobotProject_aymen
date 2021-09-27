*** Settings ***
Library               OperatingSystem
Library               SeleniumLibrary
Resource              ../Common/Common.robot
Resource              ../KeyWordDefinitionFiles/LoginPage.robot



Library    DataDriver    Data.xlsx    sheet_name=Sheet2
Suite Setup      Opening Browser
Test Template    Message Login Authentification Failed
Suite Teardown    Close Browser
Library               OperatingSystem
Library               SeleniumLibrary

Resource              ../Common/Common.robot


Library    DataDriver    Data.xlsx    sheet_name="Sheettestmessagefailed"

Suite Setup    Opening Browser
Test Template    Message Login Authentification Failed
Suite Teardown    Close Browser

*** Test Cases ***

Message Login Authentification Failed ${Username}    ${Password}    ${Failed}
*** Keywords ***

Message Login Authentification Failed
    [Arguments]    ${Username}    ${Password}    ${Failed}
    input text        ${LoginUsernameInputBox}     ${Username}
    Input Password    ${LoginPasswordInputBox}     ${Password}
    Click Element     ${LoginButton}
    Element Should Contain  ${LoginFailedMessage}   ${Failed}



