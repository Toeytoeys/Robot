*** Settings ***
Library    Selenium2Library


*** Variables ***

${settingModalButton}       xpath=/html/body/app-root/app-main/div/div[1]/div/app-menu-setting/button/span/mat-icon

${timetoWait}               5       
${titleInputField}          xpath=//input[@id='title']