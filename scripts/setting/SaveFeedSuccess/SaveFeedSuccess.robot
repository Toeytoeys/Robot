*** Settings ***

Library    Selenium2Library
Resource    ../../resource/variable/ValidateFieldVariable.robot
Resource    ../../resource/keyword/SaveFeedSuccess.robot
Resource    ../../resource/repository/CommonSettingRepo.robot
Resource    ../../resource/repository/ValidateFieldRepo.robot

*** Test Cases ***

Openweb
    
    Open Browser    ${urlLocal}    ${chromeBrowser}
    Maximize Browser Window
    Click Button Setting
    Input Title
    Input URL
    Click button save
    Click Confirm No Button
    Click button save
    Click Confirm Yes Button
    Click Close Button
    Close Browser