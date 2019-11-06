*** Settings ***
Library  SeleniumLibrary



*** Variables ***

${browser}    Chrome            
${URL}   https://www.humanity.com


*** Keywords ***

Start web test
    open browser  ${URL}  ${browser}
        maximize browser window

End web test
    close browser

