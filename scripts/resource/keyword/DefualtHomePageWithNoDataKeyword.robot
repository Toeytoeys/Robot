*** Settings ***
Library    Selenium2Library
Resource    ../variable/ValidateFieldVariable.robot

*** Keywords ***
Open Feed Reader
    Open Browser        ${urlLocal}      chrome

Check title
    Title Should Be     FeedReader
    Sleep               3

Check Empty Page
    Element Should Not Be Visible       ${menuList}



