*** Settings ***
Library    Selenium2Library
Suite Setup    Open Browser    http://localhost:4200/main    chrome
Test setup    Click Element    //*[@id="settingButton"]
Suite Teardown     Close Browser 





*** Test Case ***

ValidateField Setting Modal
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid Title Field


*** Keywords ***

