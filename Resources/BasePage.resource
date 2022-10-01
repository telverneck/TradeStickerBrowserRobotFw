***Settings***
Documentation           This is the main page for the project
...                    contains all project configurations
Library                 Browser
Library                 FakerLibrary
Library                 DateTime 
Library                 String
Library                 webdriverManager.py

Resource                Pages/Common/ActionsPage.resource
Resource                Pages/LoginPage.resource
Resource                Pages/DashboardPage.resource


Variables                properties.py



***Variables***
${BASEURL}                          https://trade-sticker-dev.vercel.app/
${BROWSER}                          ${browserName}  # properties.py file
@{LIST_OF_BROSERS}                  chrome    firefox    edge
${LONGTIMEOUT}                      90
${TIMEOUT}                          60
${BROWSER_WIDTH}                    1440   
${BROWSER_HEIGHT}                   900
${FRAME}                            css:iframe#Simulator
${slogan}                           Conectando colecionadores de figurinhas da copa.


${login}            ${loginEmailAccess}
${password}         ${passwordAccess}

# ${env}=    uat
# &{url_dict}=    qa=http://way2automation.com    uat=http://google.com
# open browser    ${url_dict.${env}}    ${browser}

***Keywords***
Start Session    
    New Browser    headless=true
    New Context    viewport={'width': ${BROWSER_WIDTH}, 'height': ${BROWSER_HEIGHT}}
    Set Browser Timeout    ${TIMEOUT}
    New Page                ${BASE_URL}     
    Browser.Get Title      contains    Trade Sticker
    

Start Session and Login
    Start Session
    Login With    ${login}    ${password}
    Check DashBoardPage Page
    
Close Session
    Take Screenshot
    Browser.Close Browser

