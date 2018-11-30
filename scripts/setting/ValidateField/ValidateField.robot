*** Settings ***

Library    Selenium2Library
Library    MongoDBLibrary

Resource    ../../resource/keyword/ValidateFieldKeyword.robot

*** Test Case ***

Validate Setting Modal Title Input Field
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid Title Field With No URL
    Valid Title Field With URL
    Invalid Title Field Thai Language
    [Teardown]    Close Browser

Validate Setting Modal URL Input Field
    Open FeedReader With Chrome Browser
    Open Setting Modal
    Valid URL Field With No Title
    URL Field Thai Language
    URL Field Thai Language With Valid Title
    [Teardown]    Close Browser
