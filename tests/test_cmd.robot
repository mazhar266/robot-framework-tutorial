*** Settings ***
Library     Process

*** Variables ***
${PYTHON_SCRIPT}    ./resources/main.py

*** Test Cases ***
TEST None
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}
    Should Be Equal As Strings    ${result.stdout}    Need an argument

TEST ZERO
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}    0
    Should Be Equal As Numbers    ${result.stdout}    32.0

TEST TEN
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}    10
    Should Be Equal As Numbers    ${result.stdout}    50.0

TEST HUNDRED
    ${res}=     Run Process    python       ${PYTHON_SCRIPT}       100
    Should Be Equal As Numbers    212.0    ${res.stdout}
