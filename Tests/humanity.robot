*** Settings ***
Documentation   HUMANITY Automation tests
Resource  ../Setup/setup.robot
Resource  ../Keywords/cookies.robot
Resource  ../Keywords/Header.robot
Resource  ../Keywords/Login.robot
Resource  ../Keywords/New_user.robot


Test Setup  Start web test
Test Teardown  End Web test



*** Test Cases ***


Add new employee - send invitation
    Login - check if present
    Login - click
    Login page - Valid login
    Staff - check if present
    Staff - click
    Add employees - chcek if present
    Add employees - click
    First employee - send invite
    First employee - activate

