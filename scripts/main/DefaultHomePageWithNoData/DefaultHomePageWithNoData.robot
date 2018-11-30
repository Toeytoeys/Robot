*** Settings ***
Library    Selenium2Library
Resource    ../../resource/keyword/DefualtHomePageWithNoDataKeyword.robot

*** Test Case ***
Check Open FeedReader Title should be FeedReader
    Open Feed Reader
    Check title
    
Check HomePage with no data
    Check Empty Page
    [tear down]     Close Browser
