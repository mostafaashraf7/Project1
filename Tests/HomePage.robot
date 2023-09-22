#Title:Implementation of Regression Testing using Test Automation tools for HS Anhalt Website
#Author:Mostafa Ashraf
#Date:31/09/2023

*** Settings ***
Documentation       AS a Tester I am verifying that the website basic functionality is woerking as excepected
Library             SeleniumLibrary

#run the script
#robot -d results tests/HomePage.robot

*** Variables ***
${HSURL}                     https://www.hs-anhalt.de/startseite.html
${Cookies}                   xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
${Browser}                   chrome

*** Test Cases ***
Home page should load
    [Documentation]         As a tester i want to verify that Home page can be loaded
    [Tags]                  101    function   Home

    #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${Browser}

    #resize browser window
    maximize browser window

    sleep                   10s
    close browser

Language can be switched between Deutch and English
    [Documentation]         As a tseter i want to verify that switching between languages is possible
    [Tags]                  102    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}

    maximize browser window
    click button           ${cookies}
    click link             EN
    click link             DE
    close browser


The latest news of HS can be checked
    [Documentation]         As a tseter i want to verify that checking the latest news is possible
    [Tags]                  103    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${browser}

    #resize browser window
    maximize browser window
    click button           ${Cookies}
    click link             xpath=/html/body/div[2]/div/div/div[1]/div/div/div[2]/ul/li[6]/a
    scroll element into view   xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
    execute javascript     window.scrollTo(0,2000)
    close browser

User is able to log in to HSA Webmail
    [Documentation]         As a tseter i want to verify that the user can log in to HSA Webmail
    [Tags]                  104    function    Login

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${browser}
    maximize browser window

    click button           ${cookies}
    sleep                  5s
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    sleep                  5s
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[1]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[1]/div/div[2]/a
    switch window          title=HSA Webmail
    input text             id=username          mostafa
    input text             id=password          15542635
    click button           xpath:/html/body/form/table/tbody/tr[2]/td[2]/table[1]/tbody/tr[4]/td/table/tbody/tr[7]/td[2]/input
    sleep                  5s
    close browser

Log in to SSC Student Portal
    [Documentation]         As a tseter i want to verify that the user can log in to HSA SSC Student Portal
    [Tags]                  105    function    LOgin

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${browser}
    maximize browser window

    click button           ${Cookies}
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[2]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[2]/div/div[2]/a
    switch window          locator=NEW
    input text             id=asdf          mostafa
    input text             id=fdsa          15542635
    click button           xpath:/html/body/div[1]/div[1]/div/div/div[3]/div[2]/form[1]/div/button
    close browser

Log in to HISQIS
    [Documentation]         As a tseter i want to verify that the user can log in to HISQIS
    [Tags]                  106    function    login

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${Browser}
    maximize browser window

    click button           ${cookies}
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[3]/div/div[2]/a
    switch window          locator=NEW
    input text             id=asdf          mostafa
    input text             id=fdsa          15542635
    click element          submit
    close browser

User is able to log in to Moodle
    [Documentation]         As a tseter i want to verify that the user can log in to HSA Webmail
    [Tags]                  107    function    Login

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}
    maximize browser window

    click button           ${Cookies}
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    switch window          title=Moodle Hochschule Anhalt: Log in to the site
    input text             id=username          mostafa
    input text             id=password          15542635
    click button           xpath:/html/body/div[2]/div[2]/div/div/section/div/div/div/div/form/div[3]/button
    close browser

Location of Koethen campus can detected
    [Documentation]         As a tseter i want to verify that the user can find Koethen campus location
    [Tags]                  108    function    Contact

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}
    maximize browser window
    click button           ${Cookies}
    scroll element into view    xpath:/html/body/div[2]/footer/section[2]/div/div[5]/section/div/div/div/div[1]/div/div/a
    click link             xpath:/html/body/div[2]/footer/section[2]/div/div[5]/section/div/div/div/div[1]/div/div/a
    click button           xpath:/html/body/c-wiz/div/div/div/div[2]/div[1]/div[3]/div[1]/div[1]/form[1]/div/div/button
    sleep                  10s
    close browser






*** Keywords ***


