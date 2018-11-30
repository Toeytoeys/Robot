*** Settings ***

Library           Selenium2Library
Resource          ../../resource/keyword/MainValidateFieldKeyword.robot
# Suite Setup       Open Main Page
# Suite Teardown    Close Browser

*** Test Cases ****
SortMenuInMainPage
    Open FeedReader
    Check Sort Menu A TO Z
    [Teardown]    Close Browser