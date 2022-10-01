*** Settings ***
Resource                    ../Resources/BasePage.robot
Suite Setup                 Start Session
Suite Teardown              Close Session
Test Setup
Test Teardown

*** Variables ***
${login}            ${loginEmailAccess}
${password}         ${passwordAccess}
${message}          ${messageError}

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





