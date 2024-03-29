*** Settings ***
Library  SeleniumLibrary




*** Keywords ***

Staff - check if present
    wait until page contains element  id=sn_staff
        wait until element is visible  id=sn_staff
        element should contain  id=sn_staff  Staff

Staff - click
    click element  id=sn_staff

Add employees - chcek if present
    wait until page contains element  id=act_primary
        wait until element is visible  id=act_primary
        element should contain  id=act_primary  Add Employees

Add employees - click
    click element  id=act_primary

First employee - send invite
#first name
    wait until element is visible  id=_asf1
        input text  id=_asf1  Test

#last name
    page should contain element  id=_asl1
        input text  id=_asl1  One

#email
    page should contain element  id=_ase1
        input text  id=_ase1  fg1@mailinator.com

#save
    page should contain element  id=_as_save_multiple
        click element  id=_as_save_multiple

First employee - activate
#Not activated
    wait until page contains element  xpath=//*[@id="StaffSchedules"]/ul/li[2]/a
    wait until element is visible  xpath=//*[@id="StaffSchedules"]/ul/li[2]/a
        click element  xpath=//*[@id="StaffSchedules"]/ul/li[2]/a
            reload page

#manualy activate all
    wait until page contains element  xpath=//*[@id="_cd_staff"]/div[3]/div[1]/button[2]
    wait until element is visible  xpath=//*[@id="_cd_staff"]/div[3]/div[1]/button[2]
        element should contain  xpath=//*[@id="_cd_staff"]/div[3]/div[1]/button[2]  Manually Activate All
        click element  xpath=//*[@id="_cd_staff"]/div[3]/div[1]/button[2]
        handle alert  ACCEPT
        reload page
