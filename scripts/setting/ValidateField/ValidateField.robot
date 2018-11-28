*** Settings ***

Library    Selenium2Library
Resource    ../../resource/keyword/ValidateFieldKeyword.robot
Resource    ../../resource/repository/ValidateFieldRepo.robot

*** Test Case ***

Validate Setting Modal Title Field
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid Title Field With No URL
    Valid Title Field With URL
    Invalid Title Field Thai Language
    [Teardown]    Close Browser

Validate Setting Modal With Invalid URL
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid URL Field With No Title
    URL Field Thai Language
    URL Field Thai Language With Valid Title
    [Teardown]    Close Browser