*** Settings ***

Library      Selenuim2Library
Library      Collections
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

Click Link To New Page
    Wait Until Element Is Visible    ${listMenuFirst}
    Click Element    ${linkFeedTitleFirst}

#Draft For Check Sort List
Make List
    :FOR ${index}   IN RANGE    1   ${count}   
    \   Append To List   ${L1}  ${value}
    Sort List   ${L1}
