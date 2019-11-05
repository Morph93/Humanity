*** Settings ***
Library  SeleniumLibrary



*** Keywords ***

Cookies - check if present
    wait until page contains element  id=cookieconsent:desc  #cookies pop-up
        wait until element is visible  id=cookieconsent:desc   #cookies pop-up

Cookies - text check
           element should contain   id=cookieconsent:desc  This website uses cookies to ensure you get the best experience on our website.   #message for cookies pop-up
           element should contain   xpath=//*[@id="cookieconsent:desc"]/a   Learn more   #Learn more
           element should contain   xpath=/html/body/div[1]/div/a   Got it!    #Got it button

Cookies - close pop-up
      click element  xpath=/html/body/div[1]/div/a    #Got it button






test
    page should contain image   css=[data-lazy-src = 'https://wcdn.humanity.com/wp-content/themes/Humanity/revamp/assets/images/HCM2-05.png']