*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
TEST 10
    ${res}=    GET     http://localhost:5000/      params=degree=10
    Status Should Be  200
    Should Be Equal As Strings    50.0  ${res.json()}[fahrenheit]

TEST 50
    ${res}=    GET     http://localhost:5000/      params=degree=50
    Status Should Be  200
    Should Be Equal As Strings    122.0  ${res.json()}[fahrenheit]
