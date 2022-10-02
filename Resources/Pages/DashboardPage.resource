***Settings***
Documentation        This page contains all actions and functions from Dashboard Page

Library         Browser

*** Variables ***
${backButton}                img[src*='back']
${searchBarInput}            id=keyword
${searchButton}              xpath=//button[contains(text(),'Buscar')]
${searchResultsTable}        article
${erroAlert}                 css=.error
${contactButton}             button >> text=Entrar em contato

*** Keywords ***
Check DashBoardPage Page
    ${visibility}    Get Element States        ${backButton}    validate    enabled | visible
    ${visibility}    Get Element States        ${searchBarInput}    validate    enabled | visible
    ${visibility}    Get Element States        ${searchButton}    validate    enabled | visible
Click Back Button
    Click    ${backButton}
    
Search for ticket
    [Arguments]    ${ticket}
    Fill Text    ${searchBarInput}     ${ticket}
    Click Search Button

Check Results
    ${visibility}    Get Element States        ${searchResultsTable}    validate    enabled | visible
    

Check No Results
    ${visibility}    Get Element States        ${erroAlert}    validate    enabled | visible

Click Search Button
    Click     ${searchButton}

Select Sticket
    [Arguments]    ${nome}
    Click        xpath=//img[contains(@alt,"${nome}")]/..

Click Entrar em contato
    Click    ${contactButton}

Whatsapp validation
    [Arguments]     ${sticket}
    ${message}    Set Variable    Oi, achei o seu contato no Trade Sticker. Estou intressado(a) na figurinha do ${sticket}, bora negociar?
    Switch Page    NEW
    Wait For Elements State    p >> text=${sticket}    visible    5000
    Take Screenshot

