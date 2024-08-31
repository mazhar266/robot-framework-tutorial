*** Settings ***
Library     RequestsLibrary

*** Variables ***
${HOST}=        http://localhost:5000/

*** Test Cases ***
TEST ZERO
    ${res}=     GET     ${HOST}
    Status Should Be    200
    Should Be Equal As Numbers    32.0    ${res.json()}[fahrenheit]

TEST TEN
    ${res}=     GET     ${HOST}      params=degree=10
    Status Should Be    200
    Should Be Equal As Numbers    50.0    ${res.json()}[fahrenheit]

TEST HUNDRED
    ${res}=     GET     ${HOST}      params=degree=100
    Status Should Be    200
    Should Be Equal As Numbers    212.0    ${res.json()}[fahrenheit]
