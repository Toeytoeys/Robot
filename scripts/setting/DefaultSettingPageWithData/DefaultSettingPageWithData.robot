*** Settings ***

Library           Selenium2Library

Resource          ../../resource/repository/CommonSettingRepo.robot
Resource          ../../resource/keyword/DefaultSettingPageWithNoData.robot
Resource          ../../resource/variable/DefaultSettingPageWithNoData.robot

Suite Setup       Open Setting Page
Suite Teardown    Close Browser

*** Test Case ***

Open setting page with no feed data should show data massage
    Verify going to page
    Verify feed no data
Save button should disable
    Validate disable button                ${saveButton}
Title field should showed and can input text
    Verify Input Text Should Be Visible    ${titleInputField}
FeedURL field should showed and can input text
    Verify Input Text Should Be Visible    ${urlInputField}
