*** Settings ***
Library    Selenium2Library

*** Variable ***
${inputTitle}    //*[@id="titleInput"]
${inputFeedURL}    //*[@id="feedUrlInput"]
${title}    BBC
${feedURL}    http://feeds.bbci.co.uk/news/rss.xml
${noDataMessage}    No Data
${headerTable}    Feed Reader
${buttonSave}    //*[@id="saveButton"]