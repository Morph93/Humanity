*** Settings ***
Library  SeleniumLibrary



*** Variables ***
# the variable will hold the name of the target browser
${browser}    Chrome            # a default value, if not overwriten
${URL}   https://www.humanity.com
${username}  fg@mailinator.com
${password}  Start123!


*** Keywords ***

Start web test
    open browser  ${URL}  ${browser}
        maximize browser window

End web test
    close browser

