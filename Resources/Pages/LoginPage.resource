***Settings***
Documentation            This page contains all actions and functions from Login Page
Library                 Browser
Resource                Pages/Common/ActionsPage.resource
Variables                properties.py  #add this to remove error from ${slogan}


*** Variables ***
${loginInput}            *[name*=email]
${passwordInput}         *[name*=password]
${loginButton}           button >> text=Entrar
${logoText}            .logo-container h2 
${alert}                .Toastify__toast-body div
${slogan}               ${sloganText}     # properties.py file

*** Keywords ***
Check Login Page
    Is Element Visible        ${loginButton}
    Is Element Visible        ${loginButton}  
    Is Element Visible        ${passwordInput}
    Browser.Get Text          ${logoText}      contains    ${slogan}   


Login With
    [Arguments]    ${login}    ${password}
    Check Login Page
    Fill Text                            ${loginInput}        ${login}
    Fill Text                            ${passwordInput}     ${password}
    Click                             ${loginButton}

Check Error alert
    [Arguments]        ${message}
    ${locator}    Set Variable        ${alert} >> text=${message}
    Wait For Elements State        ${locator}        visible    2
    Take Screenshot

Login and check message
    [Arguments]    ${login}        ${password}        ${message}
    Login With    ${login}    ${password}
    Check Error alert      ${message}  
