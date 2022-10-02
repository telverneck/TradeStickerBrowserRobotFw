*** Settings ***
Documentation                Teste de login
Resource                    ../Resources/BasePage.resource
Test Setup                 Start Session
Test Teardown              Close Session
Test Template            Login and check message

*** Variables ***
${login}                    ${loginEmailAccess}
${password}                 ${passwordAccess}
${message}                  ${errorLoginMessage}
${messageEmptyLogin}        ${errorEmailMessage}
${messageEmptyPassword}     ${errorPasswordMessage}

*** Test Cases ***                    Login                    Password        Message
Check invalid Login                   invalid@email.com        invalid         ${message}  
Check Empty Login                     ${EMPTY}                 invalid         ${messageEmptyLogin}  
Check Empty Password                  invalid@email.com        ${EMPTY}        ${messageEmptyPassword}  





