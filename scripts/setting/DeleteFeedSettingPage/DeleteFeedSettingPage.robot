*** Settings ***

Library    Selenium2Library

Resource    ../../resource/keyword/ValidateFieldKeyword.robot
Resource    ../../resource/keyword/DeleteSettingPageKeyword.robot

*** Test Case ***
Valid Delete Button
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Check If Delete Button Is visible
    [Teardown]  Close Browser

Delete Record In Table By Delete Button (Click "Yes")
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Check If Delete Button Is Visible
    Check If Confirm Delete Is Visible
    Check If Delete Button Work Functionally By Delete Record
    [Teardown]  Close Browser

Not Delete Record In Table By Delete Button (Click "No")
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Check If Delete Button Is Visible
    Check If Confirm Delete Is Visible
    Check If Delete Button Work Functionally By Not Delete Record
    [Teardown]  Close Browser



