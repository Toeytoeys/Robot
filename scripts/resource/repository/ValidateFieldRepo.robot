*** Settings ***

Library    Selenium2Library

*** Variables ***

${settingModalButton}       xpath=//*[@id='settingButton']
${titleInputField}          xpath=//input[@id='titleInput']
${urlInputField}            xpath=//input[@id='feedUrlInput']
${saveButton}               xpath=//button[@id='saveButton']
${errorTitleXpath}          xpath=/html/body/div/div[2]/div/mat-dialog-container/app-setting-modal/div/mat-form-field[1]/div/div[2]/div/mat-error
${errorURLXpath}            xpath=/html/body/div/div[2]/div/mat-dialog-container/app-setting-modal/div/mat-form-field[2]/div/div[2]/div/mat-error
${tableHeaderXpath}         xpath=//h3[@id='tableHeader_id']

