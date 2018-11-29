*** Settings ***
Library    Selenium2Library

*** Keywords ***
Open Feed Reader
    Open Browser        http://localhost:4200/main      chrome

Check title
    Title Should Be     FeedReader

Check NoData
    Element Should Not Be Visible       xpath=/html/body/app-root/app-main/div/div[2]/div[1]/app-menu-block-list/div[1]/app-menu-block/mat-card



