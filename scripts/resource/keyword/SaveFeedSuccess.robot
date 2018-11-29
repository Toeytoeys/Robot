*** Settings ***

Library    Selenium2Library
Resource    ../../resource/keyword/SaveFeedSuccess.robot
Resource    ../../resource/CommonSettingRepo.robot
Resource    ../../resource/ValidateFieldVariable.robot

*** Keywords ***

Click Button Setting

    Set Selenium Speed    0.5
    Click Element    ${settingModalButton}
    Wait Until Page Contains    Setting

Input Title

    Input Text    ${titleInputField}     ${inputTitleText}
    Wait Until Element Is Visible    ${Input_Title}
    Element Should Be Visible   ${titleInputField}     ${inputTitleText}

Input URL

    Input Text    ${urlInputField}    ${inputFeedtext}
    Wait Until Element Is Visible    ${Input_Title}
    Element Should Be Visible    ${urlInputField}    ${Input_Feed_text}


Click button save

    Click Element    ${saveButton}
    ${a}    Get text    ${saveButton}
    Should be equal    ${a}    ${b}

Click Confirm No Button

    ${c}    Get text    ${confirmNoButton}
    Should be equal    ${c}    ${d}
    Click Element    ${confirmNoButton}


Click Confirm Yes Button

    ${e}    Get text    ${confirmYesButton}
    Should be equal    ${e}    ${f}
    Click Element    ${confirmYesButton}
#    Wait Until Page Contains Element    ${titleName}

Click Close Button Setting

    Click Element    ${closeModalButton}
    ${g}    Get text    ${closeModalButton}
    Should be equal    ${g}    ${h}
