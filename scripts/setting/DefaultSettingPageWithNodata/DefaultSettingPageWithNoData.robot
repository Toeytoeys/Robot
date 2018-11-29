*** Settings ***

Library           Selenium2Library
Resource          ../../resource/repository/DefaultSettingPageWithNoData.robot
Resource          ../../resource/keyword/DefaultSettingPageWithNoData.robot
Suite Setup       open Setting Page
Suite Teardown    Close Browser

*** Test Case ***

Open Setting page with No Feed data should show No data Massage
    Verify going to page
    Verify feed no data
Save Button should disable
    Validate disable button                ${buttonSave}
Title Field should showed and can input text
    Verify Input Text Should Be Visible    ${inputTitle}
FeedURL Field should showed and can input text
    Verify Input Text Should Be Visible    ${inputFeedURL}
