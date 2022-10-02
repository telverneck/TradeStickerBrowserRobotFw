***Settings***
Documentation        This page contains all actions and functions from Dashboard Page

Library         Browser
Resource                Pages/Common/ActionsPage.resource  #leave this for now to remove errors

*** Variables ***
${backButton}                img[src*='back']
${searchBarInput}            id=keyword
${searchButton}              xpath=//button[contains(text(),'Buscar')]
${searchResultsTable}        article
${erroAlert}                 css=.error
${contactButton}             button >> text=Entrar em contato

*** Keywords ***
Check DashBoardPage Page
    Is Element Visible    ${backButton}  
    Is Element Visible    ${searchBarInput}    
    Is Element Visible    ${searchButton}   
Click Back Button
    Click    ${backButton}
    
Search for ticket
    [Arguments]    ${ticket}
    Fill Text    ${searchBarInput}     ${ticket}
    Click Search Button

Check Results
    Is Element Visible    ${searchResultsTable}
    

Check No Results
    Is Element Visible    ${erroAlert}

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
    Close Page    CURRENT     CURRENT     CURRENT 
    Switch Page    CURRENT

Logout
    Click Back Button
