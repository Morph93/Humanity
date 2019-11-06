*** Settings ***
Library  SeleniumLibrary



*** Keywords ***

Login - check if present
    wait until page contains element  xpath=//*[@id="navbarSupportedContent"]/div/a[2]
    wait until element is visible  xpath=//*[@id="navbarSupportedContent"]/div/a[2]
    element should contain  xpath=//*[@id="navbarSupportedContent"]/div/a[2]  LOGIN

Login - click
    click element  xpath=//*[@id="navbarSupportedContent"]/div/a[2]

Login page - check
    wait until page contains element  id=logo   #logo

    page should contain element  id=logo   #logo
    page should contain element  id=email  #email
    page should contain element  id=password   #password

    page should contain element  name=login   #login button
        element should contain  name=login  Log in

    page should contain element  xpath=//*[@id="LoginForm"]/div[3]/div/div/div/p  #devider OR
        element should contain  xpath=//*[@id="LoginForm"]/div[3]/div/div/div/p  OR

    page should contain element  xpath=//*[@id="LoginForm"]/div[3]/div/div/a  #facebook login
        element should contain   xpath=//*[@id="LoginForm"]/div[3]/div/div/a   Log in with Facebook

    page should contain element  xpath=//*[@id="login"]/div[2]/div[1]/a/i  #computer icon

    page should contain element  xpath=//*[@id="login"]/div[2]/div[2]/a  #forgot password link
        element should contain  xpath=//*[@id="login"]/div[2]/div[2]/a   Forgot Password?

Loign page - footer check
    page should contain element  xpath=/html/body/div[1]/div[3]   #footer

    page should contain element  xpath=/html/body/div[1]/div[3]/div/a  #forgot password?
        element should contain  xpath=/html/body/div[1]/div[3]/div/a   Lost password?

    page should contain element  xpath=/html/body/div[1]/div[3]/div/span/a[1]   #Homepage
        element should contain  xpath=/html/body/div[1]/div[3]/div/span/a[1]   Homepage

    page should contain element  xpath=/html/body/div[1]/div[3]/div/span/a[2]   #ToU
        element should contain  xpath=/html/body/div[1]/div[3]/div/span/a[2]   Terms of Use

    page should contain element  xpath=/html/body/div[1]/div[3]/div/span/a[3]   #Privacy Policy
        element should contain  xpath=/html/body/div[1]/div[3]/div/span/a[3]   Privacy Policy

        element should contain  xpath=/html/body/div[1]/div[3]/div   ©2019 Humanity.com Inc.

Login page - validation check

    #wrong email & pass
    input text  id=email  test@mailinator.com
    input text  id=password  Start123!
        click button  name=login
            wait until element is visible  id=response-message
                element should contain  id=response-message  Your username/email or password is incorrect. Please try again or click

    #wrong pass
    reload page
    wait until element is visible  id=email
    input text  id=email  filipides93@gmail.com
    input text  id=password  Test123!
        click button  name=login
            wait until element is visible  id=response-message
                element should contain  id=response-message  Your username/email or password is incorrect. Please try again or click

    #empty username & pass
    reload page
    wait until element is visible  name=login
        click button  name=login
            wait until element is visible  id=response-message
                element should contain  id=response-message  Your username/email or password is incorrect. Please try again or click

Login page - Facebook login
    Login with facebook - wait till visible   #facebook login button
         login with facebook - click

        #not now
        wait until element is visible  css=[data-lynx-mode=asynclazy]  #not now
            click element  css=[data-lynx-mode=asynclazy]

    #login with valid acc
    Login with facebook - wait till visible
    login with facebook - click
        wait until element is visible  id=email
            input text  id=email  filipgajictest@gmail.com
            input text  id=pass  Start123!
                click element  name=login  #facebook login

Login page - Valid login
    email - humanity - visible check
    email - humanity - input text
    pass - humanity - input text
    login - humanity - click







*** Keywords ***


Login with facebook - click
    click element  xpath=//*[@id="LoginForm"]/div[3]/div/div/a

Login with facebook - wait till visible
    wait until element is visible  xpath=//*[@id="LoginForm"]/div[3]/div/div/a



#Humanity Login page
Email - Humanity - visible check
    wait until element is visible  id=email

Email - Humanity - input text
    input text  id=email  filipides93@gmail.com

Pass - Humanity - visible check
    wait until element is visible  id=password

Pass - Humanity - input text
    input text  id=password  Start123!

Login - Humanity - Click
    click element  name=login



