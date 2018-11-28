*** Settings ***
Library    Selenium2Library
Resource    ../../resource/repository/DefaultSettingPageWithNoData.robot
*** Keywords ***
open Setting Page
    Open Browser    http://localhost:4200/main    chrome
    Click Element    //*[@id="settingButton"]
verify Going To Page 
    Page should contain    ${headerTable}
verify Feed No Data
    Page should contain    ${noDataMessage}    
verify Input Text Should Be Visible
    [Arguments]    ${Xpath}
    Element Should Be Visible    ${Xpath}
validate disable button
    [Arguments]    ${Xpath}
    Element Should Be Disabled    ${Xpath}