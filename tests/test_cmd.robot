*** Settings ***
Library     Process

*** Variables ***
${PYTHON_SCRIPT}    ./main.py

*** Test Cases ***
TEST None
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}
    Should Be Equal As Strings    ${result.stdout}    Need an argument

TEST 0
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}    0
    Should Be Equal As Numbers    ${result.stdout}    32.0

TEST 10
    ${result} =    Run Process    python    ${PYTHON_SCRIPT}    10
    Should Be Equal As Numbers    ${result.stdout}    50.0
