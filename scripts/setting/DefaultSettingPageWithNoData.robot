*** Settings ***
Library    Selenium2Library
Suite Setup    Open Browser    http://localhost:4200/main    chrome
Test setup    Click Element    //*[@id="settingButton"]
Suite Teardown     Close Browser 
*** Variable ***
Verify Setting page
    Page Should Contain	    BBC
Verify Title field
Verify FeedURL field

*** Keywords ***

*** Test Case ***
Defauld Setting Page is opened
    Verify Setting page
Check Title field with NoData
    Verify Title field
Check FeedURL field with NoData
    Verify FeedURL field

    