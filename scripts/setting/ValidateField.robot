*** Settings ***
Library    Selenium2Library
Suite Teardown     Close Browser 


*** Test Case ***

ValidateField Setting Modal
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid Title Field

