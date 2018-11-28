*** Settings ***

Library    Selenium2Library
Resource    ../repository/ValidateFieldRepo.robot


*** Keywords ***

Open FeedReader With Chrome Browser
    Open Browser    http://localhost:4200/main    chrome
    Set Selenium Speed    1
    Wait Until Element Is Visible    ${settingModalButton}    ${timetoWait}

Open Setting Modal
    Click Element    ${settingModalButton}
    Wait Until Element Is Visible    ${titleInputField}    ${timetoWait}

Valid Title Field With No URL
    Input Text    ${titleInputField}    RobotTestTitle
    Element Should Be Disabled    ${saveButton}
    Clear Element Text    ${titleInputField}

Valid URL Field With No Title
    Input Text    ${urlInputField}    RobotTestURL
    Element Should Be Disabled    ${saveButton}
    Clear Element Text    ${urlInputField}

Valid Title Field With URL
    Input Text    ${titleInputField}    RobotTestTitle
    Input Text    ${urlInputField}    RobotTestURL
    Element Should Be Enabled    ${saveButton}

Invalid Title Field With Thai Language
    Input Text    ${titleInputField}    ภาษาไทย
    Click Element    ${urlInputField}
    Element Should Be Visible    ${errorTitleXpath}
    ${errorToCheck}    Get Text    ${errorTitleXpath}
    Should Be Equal As Strings    ${errorToCheck}    ${errorTitleWord}
    Element Should Be Disabled    ${saveButton}


