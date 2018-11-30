*** Settings ***

Library     Selenium2Library

Resource    ../../resource/repository/CommonSettingRepo.robot
Resource    ../../resource/repository/DefaultSettingPageWithData.robot

*** Keywords ***

Open Setting Page
    Open Browser                   ${urlLocal}              ${chromeBrowser}
    Click Element                  ${settingModalButton}
Verify Going To Page
    Page should contain            ${headerTable}
Verify Feed Table Visible
    Page Should Contain Element    ${buttomBinRow1}
Verify Input Text Should Be Visible
    [Arguments]                    ${Xpath}
    Element Should Be Visible      ${Xpath}
Validate Disable Button
    [Arguments]                    ${Xpath}
    Element Should Be Disabled     ${Xpath}