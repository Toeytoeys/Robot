*** Settings ***

Library     Selenium2Library
Resource    ../../resource/keyword/SaveFeedSuccess.robot
Resource    ../../resource/CommonSettingRepo.robot
Resource    ../../resource/ValidateFieldVariable.robot


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
#    Click Close Button Setting