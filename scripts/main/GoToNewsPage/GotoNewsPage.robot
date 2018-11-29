*** Settings ***

Library           Selenium2Library
Resource          ../resource/keyword/MainValidateFieldKeyword.robot
Suite Setup       Open Main Page
Suite Teardown    Close Browser


*** Test Case ***

Go To New Page
    Open FeedReader
    Should Be Equal As Strings      ${listMenuFirst}        ${textdefaultMenu}