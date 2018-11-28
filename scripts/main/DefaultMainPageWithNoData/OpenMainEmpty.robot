*** Settings ***
Library     Selenium2Library

*** Variables ***
${URL}      

*** Test Case ***
Open FeedReader Page
        Open FeedReader


*** Keywords ***
Open FeedReader
        Open Browser                ${URL}      browser=chrome
        Maximize Browser Window
        Sleep                       3
        [Teardown]                  Close Browser