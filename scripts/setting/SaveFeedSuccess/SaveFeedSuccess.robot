*** Settings ***
Library    Selenium2Library


*** Variables ***
${Browser}    Chrome
${URL}    http://localhost:4200/main
${Click_Button_Setting}    xpath=//*[@class="mat-icon material-icons"]
${Input_Title}    xpath=//*[@ng-reflect-id="titleInput"]
${Input_Title_text}    BANGKOKPOST
${Title_Name}    BANGKOKPOST
${Input_Feed_URL}    xpath=//*[@ng-reflect-id="feedUrlInput"]
${Input_Feed_text}    https://www.bangkokpost.com/
${Click_Button_Save}    xpath=//*[@id="saveButton"]
${Click_Confirm_Yes_Button}    xpath=//*[@id="comfirmYesButton"]
${Click_Confirm_No_Button}    xpath=//*[@id="confirmNoButton"]
${Click_Close_Button_Setting}    xpath=//span[@class="sr-only"]
${b}    Save
${d}    No
${f}    Yes
${h}    Close


*** Keywords ***

Click Button Setting

    Set Selenium Speed    0.5
    Click Element    ${Click_Button_Setting}
    Wait Until Page Contains    Setting

Input Title

    Input Text    ${Input_Title}    ${Input_Title_text}
    Wait Until Element Is Visible    ${Input_Title}
    Element Should Be Visible    ${Input_Title}    ${Input_Title_text}

Input URL

    Input Text    ${Input_Feed_URL}    ${Input_Feed_text}
    Wait Until Element Is Visible    ${Input_Title}
    Element Should Be Visible    ${Input_Feed_URL}    ${Input_Feed_text}


Click button save

    Click Element    ${Click_Button_Save}
    ${a}    Get text    ${Click_Button_Save}
    Should be equal    ${a}    ${b}

Click Confirm No Button

    ${c}    Get text    ${Click_Confirm_No_Button}
    Should be equal    ${c}    ${d}
    Click Element    ${Click_Confirm_No_Button}


Click Confirm Yes Button

    ${e}    Get text    ${Click_Confirm_Yes_Button}
    Should be equal    ${e}    ${f}
    Click Element    ${Click_Confirm_Yes_Button}
#    Wait Until Page Contains Element    ${Title_Name}

Click Close Button Setting

    Click Element    ${Click_Close_Button_Setting}
    ${g}    Get text    ${Click_Close_Button_Setting}
    Should be equal    ${g}    ${h}


*** Test Cases ***

Openweb

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Button Setting
    Input Title
    Input URL
    Click button save
    Click Confirm No Button
    Click button save
    Click Confirm Yes Button
#    Click Close Button Setting