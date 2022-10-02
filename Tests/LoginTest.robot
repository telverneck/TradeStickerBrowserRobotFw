*** Settings ***
Documentation                Teste de login
Resource                    ../Resources/BasePage.resource
Suite Setup                 Start Session
Suite Teardown              Close Session

*** Variables ***
${login}            ${loginEmailAccess}
${password}         ${passwordAccess}
${message}          ${errorLoginMessage}

*** Test Cases ***
Scenario1: Check Login Page
    [Documentation]    Test for Login Page
    [Tags]        login    smoke    full
    Login With    ${login}    ${password}
    Check DashBoardPage Page
    Click Back Button
    Check Login Page

Scenario1: Check invalid Login
    [Tags]        invalid    smoke    full
    Login With    invalid@email.com    invalid
    Check Error alert      ${message}  





