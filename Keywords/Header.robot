*** Settings ***
Library  SeleniumLibrary



*** Keywords ***

Header - check if present
    wait until element is visible  xpath=//*[@id="wrapper"]/header/div[1]   #header

Header - logo
    page should contain element  id=Layer_1   #Logo

Header - Navigation Bar
    page should contain element  id=navbarSupportedContent   #navigation

       #PLATFORM
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[1]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[1]/a    PLATFORM

        #SOLUTIONS
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a   SOLUTIONS

        #INTEGRATIONS & PARTNERS
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[3]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[3]/a   INTEGRATIONS & PARTNERS

        #RESOURCES
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[4]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[4]/a   RESOURCES

        #PRICING
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[5]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[5]/a   PRICING

        #ABOUT US
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/ul/li[6]/a
        element should contain  xpath=//*[@id="navbarSupportedContent"]/ul/li[6]/a   ABOUT US

        #TEL
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/div/a[1]
        element should contain  xpath=//*[@id="navbarSupportedContent"]/div/a[1]   1 (888) 973-6030

        #LOGIN
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/div/a[2]
        element should contain  xpath=//*[@id="navbarSupportedContent"]/div/a[2]  LOGIN

        #FREE TRIAL
        page should contain element  xpath=//*[@id="navbarSupportedContent"]/div/a[3]
        element should contain  xpath=//*[@id="navbarSupportedContent"]/div/a[3]    START MY FREE TRIAL