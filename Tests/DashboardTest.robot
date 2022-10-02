*** Settings ***
Documentation                Testes da pagina Dashboard
Resource                    ../Resources/BasePage.resource
Suite Setup                 Start Session
Suite Teardown              Close Session
Test Setup                  Login
Test Teardown               Logout

*** Variables ***
${sticker}    Neymar Jr

*** Test Cases ***
Scenario1: Check Search function
    [Documentation]    Test for Dashboard Page
    [Tags]        doing     Dashboard    smoke    full
    
    Search for ticket    legend
    Check Results
    Select Sticket        ${sticker}
    Click Entrar em contato
    Whatsapp validation    ${sticker}

Scenario1: Check no results
    [Documentation]    Test for Dashboard Page
    [Tags]        Dashboard    smoke    full
    
    Search for ticket    noResults
    Check No Results




