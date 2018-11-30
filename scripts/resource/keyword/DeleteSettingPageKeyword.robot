*** Settings ***

Library    Selenium2Library
Library    MongoDBLibrary

Resource    ../repository/ValidateFieldRepo.robot
Resource    ../repository/DeleteSettingRepo.robot
Resource    ../repository/CommonSettingRepo.robot
Resource    ../variable/ValidateFieldVariable.robot

*** Keywords ***

Check If Delete Button Is Visible
    Element Should Be Visible       ${deleteButton}
    Click Element                   ${deleteButton}

Check If Confirm Delete Is Visible
    Wait Until Element Is Visible   ${confirmTitle}
    Sleep                           1
    Element Should Be Visible       ${confirmTitle}
    Element Should Be Visible       ${confirmWording}
    Element Should Be Visible       ${confirmYesButton}
    Element Should Be Visible       ${confirmNoButton}

Check If Delete Button Work Functionally By Delete Record
    Click Element                   ${confirmYesButton}

Check If Delete Button Work Functionally By Not Delete Record
    Click Element                   ${confirmNoButton}
    Wait Until Element Is Visible   ${titleInputField}
    Element Should Be Visible       ${titleInputField}





