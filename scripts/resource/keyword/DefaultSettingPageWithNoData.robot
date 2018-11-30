*** Settings ***

Library     Selenium2Library
Resource    ../../resource/repository/CommonSettingRepo.robot
Resource    ../../resource/variable/DefaultSettingPageWithData.robot

*** Keywords ***

Open Setting Page
    Open Browser                   ${urlLocal}                 ${chromeBrowser}
    Click Element                  ${settingModalButton}
Verify Going To Page
    Page should contain            ${headerTable}
Verify Feed No Data
    Page should contain           ${noDataMessage}
Verify Input Text Should Be Visible
    [Arguments]                    ${Xpath}
    Element Should Be Visible      ${Xpath}
Validate Disable Button
    [Arguments]                    ${Xpath}
    Element Should Be Disabled     ${Xpath}