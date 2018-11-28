*** Settings ***
Library    Selenium2Library

*** Variables ***
${listMenuFirst}    xpath=/html/body/app-root/app-main/div/div[2]/div[1]/app-menu-block-list/div[1]/app-menu-block/mat-card
${listMenuSecond}    xpath=/html/body/app-root/app-main/div/div[2]/div[1]/app-menu-block-list/div[2]/app-menu-block/mat-card
${listMenuThird}    xpath=/html/body/app-root/app-main/div/div[2]/div[1]/app-menu-block-list/div[3]/app-menu-block/mat-card
${linkFeedTitleFirst}    xpath=/html/body/app-root/app-main/div/div[2]/div[2]/app-feed-block-list/div[1]/app-feed-block/mat-card/a
${linkFeedTitleSecond}    xpath=/html/body/app-root/app-main/div/div[2]/div[2]/app-feed-block-list/div[2]/app-feed-block/mat-card/a
${linkFeedTitleThird}    xpath=/html/body/app-root/app-main/div/div[2]/div[2]/app-feed-block-list/div[3]/app-feed-block/mat-card/a
${btnSetting}    xpath=//*[@id="settingButton"]
