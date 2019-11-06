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


Cookies
    Cookies - check if present
    Cookies - elements check
    cookies - close pop-up

Header
    Header - check if present
    Header - logo
    Header - Navigation Bar

Login - elements check
    Login - check if present
    Login - click
    Login page - check
    Loign page - footer check

Login - Validation check
    Login - check if present
    Login - click
    Login page - validation check

Login - Facebook login
    Login - check if present
    Login - click
    Login page - Facebook login

Login - Valid login
    Login - check if present
    Login - click
    Login page - Valid login

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

