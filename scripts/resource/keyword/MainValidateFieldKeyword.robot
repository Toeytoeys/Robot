*** Settings ***

Library      Selenuim2Library
Resource     ../resource/repository/ValidateFieldRepo.robot
Resource     ../resource/repository/DefaultSettingPageWithNoData.robot

*** Keywords ***

Open FeedReader
    Open Browser        ${urlLocal}     ${chromeBrowser}
    Wait Until Element Is Visible       ${settingModalButton}
    
Go To Setting Page  
    Click Element       ${settingModalButton}
    Wait Until Element Is Visible       ${titleInputField}      ${timetoWait}

Check Default Menu
    ${checkTextMenu}    Get Text    ${listMenuFirst}
    Should Be Equal As Strings    ${checkTextMenu}    ${textdefaultMenu}


