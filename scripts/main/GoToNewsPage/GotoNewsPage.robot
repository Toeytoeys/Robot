*** Settings ***

Library     Selenium2Library
Resource    ../../resource/keyword/MainValidateFieldKeyword.robot
Resource    ../../resource/repository/MainValidateFieldRepo.robot
# Suite Setup       Open Main Page
# Suite Teardown    Close Browser

*** Test Cases ***

Go To New Page
    Open FeedReader
    Click Link To New Page
    [Teardown]    Close Browser