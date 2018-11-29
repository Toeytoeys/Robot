*** Settings ***

Library           Selenium2Library
Resource          ../../resource/keyword/MainValidateFieldKeyword.robot

*** Test Cases ***

Go To Setting Page
    Open FeedReader
    Go To Setting Page
    [Teardown]    Close Browser