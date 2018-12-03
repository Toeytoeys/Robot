*** Settings ***

Library    Selenium2Library

*** Variables ***

${settingModalButton}       xpath=//*[@id='settingButton']
${titleInputField}          xpath=//*[@id='titleInput']
${urlInputField}            xpath=//*[@id='feedUrlInput']
${saveButton}               xpath=//*[@id='saveButton']
${errorTitleXpath}          xpath=/html/body/div/div[2]/div/mat-dialog-container/app-setting-modal/div/mat-form-field[1]/div/div[2]/div/mat-error
${errorURLXpath}            xpath=/html/body/div/div[2]/div/mat-dialog-container/app-setting-modal/div/mat-form-field[2]/div/div[2]/div/mat-error
${tableHeaderXpath}         xpath=//*[@id='tableHeader_id']
${closeModalButton}         xpath=//*[@id='closeButton']

${confirmTitle}             xpath=//*[@id='confirmTitleId']
${confirmWording}           xpath=//*[@id='confirmWordingId']
${confirmYesButton}         xpath=//*[@id='comfirmYesButton']
${confirmNoButton}          xpath=//*[@id='confirmNoButton']
