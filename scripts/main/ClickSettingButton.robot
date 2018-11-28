*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}

*** Test Case ***
Click Setting Button
        Open FeedReader 
        Click Setting Button

*** Keywords ***
Open FeedReader 
        Open Browser                ${URL}      browser=chrome
        Maximize Browser Window
        Sleep                       3

Click Setting Button
        Click Element
        Sleep                       5
        [Teardown]                  Close Browser