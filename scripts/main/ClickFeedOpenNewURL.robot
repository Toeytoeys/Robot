*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}

*** Test Case ***
Open New URL
        Open FeedReader
        Open New URL

*** Keywords ***
Open FeedReader 
        Open Browser                ${URL}      browser=chrome
        Maximize Browser Window
        Sleep                       3

Open New URL
        Click Element
        Sleep                       5
        [Teardown]                  Close Browser