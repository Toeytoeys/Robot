*** Settings ***

Library           Selenium2Library

Resource          ../../resource/repository/CommonSettingRepo.robot
Resource          ../../resource/keyword/DefaultSettingPageWithData.robot
Resource          ../../resource/variable/DefaultSettingPageWithData.robot

Suite Setup       Open Setting Page
Suite Teardown    Close Browser

*** Test Case ***

Open Setting page with no feed data should show data table
    Verify Going To Page
    Verify Feed Table Visible
Save button should disable
    Validate Disable Button                ${saveButton}
Title field should showed and can input text
    Verify Input Text Should Be Visible    ${titleInputField}
FeedURL field should showed and can input text
    Verify Input Text Should Be Visible    ${urlInputField}
