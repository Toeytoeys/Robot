*** Settings ***

Library    Selenium2Library

Resource    ../../resource/keyword/ValidateFieldKeyword.robot

*** Test Case ***
Valid Delete Button
    Open FeedReader With Chrome Browser
    Open Setting Modal



