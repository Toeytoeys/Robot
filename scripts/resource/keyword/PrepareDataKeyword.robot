*** Settings ***

Library    Selenium2Library
Library    MongoDBLibrary

Resource    ../repository/ValidateFieldRepo.robot
Resource    ../variable/ValidateFieldVariable.robot

*** Keywords ***

Insert And Delete Data From Table By Query
    Connect To MongoDB      ${dbLocal}    ${dbPort}   10  10
    @{output} =    Get MongoDB Databases
    Log Many    @{output}
    ${records}     Retrieve All Mongodb Records     ${dbName}      ${dbColl}
    Log Many    ${records}
    Save Mongodb Records    ${dbName}      ${dbColl}   ${jsonData1}
    Remove Mongodb Records      ${dbName}      ${dbColl}   ${jsonData1}
    Disconnect From MongoDB

Insert Data Into Records
    Connect To MongoDB      ${dbLocal}    ${dbPort}   10  10
    @{output} =    Get MongoDB Databases
    Log Many    @{output}
    : FOR    ${index}    IN RANGE    1    5
    \   Save Mongodb Records    ${dbName}      ${dbColl}   ${jsonData${index}}
    Disconnect From MongoDB

Clear Data From Records
    Connect To MongoDB      ${dbLocal}    ${dbPort}   10  10
    @{output} =    Get MongoDB Databases
    Log Many    @{output}
    : FOR    ${index}    IN RANGE    1    5
    \   Remove Mongodb Records    ${dbName}      ${dbColl}   ${jsonData${index}}
    Disconnect From MongoDB