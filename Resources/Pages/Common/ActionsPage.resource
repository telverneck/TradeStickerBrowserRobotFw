***Settings***
Documentation        This page contains all actions that can 
...                  be used in any project
Library         Browser
Library         FakerLibrary
Library         String
Library         DateTime 



*** Keywords ***

Is Element Visible
    [Arguments]    ${webElement}
    ${visibility}    Get Element States        ${webElement}    validate    enabled | visible