*** Settings ***
Library    Selenium2Library

*** Variables ***
${URL}    xxx
${BROWSER}    gc

*** Keywords ***
Open Web Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    3

BBC Default First Menu
    
    Sleep   3
    [Teardown]    Close Browser

*** Test Cases ***
Show Menu
    Open Web Browser
    BBC Default First Menu