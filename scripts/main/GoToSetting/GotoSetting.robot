*** Settings ***

Library           Selenium2Library
Resource          ../../resource/keyword/MainValidateFieldKeyword.robot
# Suite Setup       Open Main Page
# Suite Teardown    Close Browser

*** Test Cases ***

Go To Setting Page
    Open FeedReader
    Go To Setting Page