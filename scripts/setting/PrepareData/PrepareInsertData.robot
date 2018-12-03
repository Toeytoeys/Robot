*** Settings ***

Library    Selenium2Library
Library    MongoDBLibrary

Resource    ../../resource/keyword/PrepareDataKeyword.robot

*** Test Case ***

Check Connect To Database
    Insert And Delete Data From Table By Query

Prepare Data By Insert Into Record
    Insert Data Into Records