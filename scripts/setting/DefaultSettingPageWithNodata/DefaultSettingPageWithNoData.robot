*** Settings ***
Library    Selenium2Library
Resource    ../../resource/repository/DefaultSettingPageWithNoData.robot
Resource    ../../resource/keyword/DefaultSettingPageWithNoData.robot
Suite Setup    open Setting Page
Suite Teardown     Close Browser 

*** Test Case ***
Open Setting page with No Feed data should show No data Massage
    verify going to page 
    verify feed no data
Save Button should disable
    validate disable button    ${buttonSave}
Title Field should showed and can input text
    verify Input Text Should Be Visible    ${inputTitle}    
FeedURL Field should showed and can input text
    verify Input Text Should Be Visible    ${inputFeedURL}    
