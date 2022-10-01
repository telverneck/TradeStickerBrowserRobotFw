***Settings***
Documentation        This page contains all actions that can 
...                  be used in any project
Library         Browser


*** Variables ***
${loginInput}            *[name*=email]
${passwordInput}         *[name*=password]
${loginButton}           button >> text=Entrar
${logoText}            .logo-container h2 

*** Keywords ***
Check Login Page
    ${visibility}    Get Element States        ${loginButton}    validate    enabled | visible
    ${visibility}    Get Element States        ${passwordInput}   validate    enabled | visible
    Browser.Get Text     ${logoText}      contains    ${slogan}   


Login With
    [Arguments]    ${login}    ${password}
    Check Login Page
    Fill Text                            ${loginInput}        ${login}
    Fill Text                            ${passwordInput}     ${password}
    Click                             ${loginButton}

Check Error alert
    ${locator}    Set Variable        css=.Toastify__toast-body div >> text=Credenciais inválidas
    Wait For Elements State        ${locator}        visible    2