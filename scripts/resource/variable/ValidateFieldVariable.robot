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