*** Settings ***
Documentation   HUMANITY Automation tests
Resource  ../Setup/setup.robot
Resource  ../Keywords/cookies.robot
Resource  ../Keywords/Header.robot
Resource  ../Keywords/Login.robot


Test Setup  Start web test
Test Teardown  End Web test



*** Test Cases ***


Cookies
    Cookies - check if present
    cookies - text check
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
    Login page - FE validation

Login - Facebook login
    Login - check if present
    Login - click
    Login page - Facebook login

Login - Valid login
    Login - check if present
    Login - click
    Login page - Valid login

Test

