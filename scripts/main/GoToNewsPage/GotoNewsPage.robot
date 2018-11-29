*** Settings ***

Library           Selenium2Library
Resource          ../resource/keyword/MainValidateFieldKeyword.robot
Suite Setup       Open Main Page
Suite Teardown    Close Browser


*** Test Case ***

    Open FeedReader
    Should Be Equal As Strings      ${textdefaultMenu}      ${listMenuFirst}