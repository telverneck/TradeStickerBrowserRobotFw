***Settings***
Documentation        This page contains all actions that can 
...                  be used in any project

Library         Browser

*** Variables ***
${backButton}                img[src*='back']
${searchBarInput}            id=keyword
${searchButton}              xpath=//button[contains(text(),'Buscar')]
${searchResultsTable}        article
${erroAlert}                 class=error

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
    Click Element     ${searchButton}


