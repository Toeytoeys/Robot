
*** Settings ***

Library    Selenium2Library

*** Variables ***

${chromeBrowser}            chrome
${urlLocal}                 http://localhost:4200/main
${timetoWait}               5
${errorTitleWord}           Please input english only
${errorURLWord}             Please fill url
${dataTitle1}               RobotTestTitle
${dataTitle2}               ภาษาไทย
${dataURL1}                 RobotTestURL
${inputTitleText}           BANGKOKPOST
${titleName}                BANGKOKPOST
${inputFeedtext}            https://www.bangkokpost.com/
${b}                        Save
${d}                        No
${f}                        Yes
${h}                        Close
${menuList}                 xpath=/html/body/app-root/app-main/div/div[2]/div[1]/app-menu-block-list/div[1]/app-menu-block/mat-card

${dbName}                   feedreader
${dbColl}                   feeds
${dbPort}                   27017
${dbLocal}                  localhost
${jsonData1}                 {"title":"robotMongoDB1","url":"botURL"}
${jsonData2}                 {"title":"robotMongoDB2","url":"botURL"}
${jsonData3}                 {"title":"robotMongoDB3","url":"botURL"}
${jsonData4}                 {"title":"robotMongoDB4","url":"botURL"}
