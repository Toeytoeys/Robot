*** Settings ***

Library    Selenium2Library


*** Keywords ***

Open FeedReader With Chrome Browser
    Open Browser    http://localhost:4200/main    chrome
    Set Selenium Speed    1
    Wait Until Element Is Visible    ${settingModalButton}    ${timetoWait}

Open Setting Modal
    Click Element    ${settingModalButton}
    Wait Until Element Is Visible    ${titleInputField}    ${timetoWait}

Valid Title Field
    Input Text    ${titleInputField}    RobotTest
    Element Should Be Disabled    


Invalidate Title Field

