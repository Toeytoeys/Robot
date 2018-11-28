*** Settings ***

Library    Selenium2Library
Resource    ../../resource/keyword/ValidateFieldKeyword.robot
Resource    ../../resource/repository/ValidateFieldRepo.robot
Suite Teardown     Close Browser


*** Test Case ***

ValidateField Setting Modal
    Open FeedReader With Chrome Browser
    Open Setting Modal
    # Valid Title Field With No URL
    # Valid URL Field With No Title
    # Valid Title Field With URL
    Invalid Title Field With Thai Language