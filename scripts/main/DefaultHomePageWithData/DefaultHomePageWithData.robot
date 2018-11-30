*** Settings ***

Library           Selenium2Library
Resource          ../../resource/keyword/MainValidateFieldKeyword.robot
Resource          ../../resource/variable/ValidateFieldVariable.robot

#Suite Setup       Open Main Page
Suite Teardown    Close Browser


*** Test Case ***

Check Default Menu
    Open FeedReader
    Check Default Menu