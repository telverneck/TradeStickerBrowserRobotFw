***Settings***
Documentation           This is the main page for the project
Library                 Browser
Library                 FakerLibrary
Library                 DateTime 
Library                 String
Library                 webdriverManager.py

Resource                Pages/Common/ActionsPage.robot
Resource                Pages/Common/ComponentsPage.robot
Resource                Pages/LoginPage.robot
Resource                Pages/DashboardPage.robot


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
    
Close Session
    Take Screenshot
    Browser.Close Browser

