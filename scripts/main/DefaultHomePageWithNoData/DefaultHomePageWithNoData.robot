*** Settings ***
Library    Selenium2Library
Resource    ../../resource/keyword/DefualtHomePageWithNoDataKeyword.robot

*** Test Case ***
Check Open Feed Reader
    Open Feed Reader
    Check title
Defualt Page
    Check NoData
