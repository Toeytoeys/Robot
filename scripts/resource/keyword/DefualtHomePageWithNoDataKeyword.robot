*** Settings ***
Library    Selenium2Library
Resource    ../variable/ValidateFieldVariable.robot

*** Keywords ***
Open Feed Reader
    Open Browser        ${urlLocal}      chrome

Check title
    Title Should Be     FeedReader

Check NoData
    Element Should Not Be Visible       ${menuList}



