*** Settings ***

Library           Selenium2Library
Resource          ../../resource/keyword/MainValidateFieldKeyword.robot
Resource          ../../resource/variable/ValidateFieldVariable.robot
Resource          ../../resource/repository/MainValidateFieldRepo.robot
#Suite Setup       Open Main Page
# Suite Teardown    Close Browser


*** Test Case ***

Check Default Menu
    Open FeedReader
    Check Default Menu
    [Teardown]    Close Browser