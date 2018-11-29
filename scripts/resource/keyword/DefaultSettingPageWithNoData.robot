*** Settings ***
Library    Selenium2Library
Resource    ../../resource/repository/DefaultSettingPageWithNoData.robot
*** Keywords ***
Open Setting Page
    Open Browser    http://localhost:4200/main    chrome
    Click Element    //*[@id="settingButton"]
Verify Going To Page 
    Page should contain    ${headerTable}
Verify Feed No Data
    Page should contain    ${noDataMessage}    
Verify Input Text Should Be Visible
    [Arguments]    ${Xpath}
    Element Should Be Visible    ${Xpath}
Validate disable button
    [Arguments]    ${Xpath}
    Element Should Be Disabled    ${Xpath}