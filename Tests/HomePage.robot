#Title:Continuous Integration of Regression Testing using Test Automation tools for HS Anhalt Website
#Author:Mostafa Ashraf
#Date:31/09/2023

#run the script
#robot -d results tests/HomePage.robot

*** Settings ***
Documentation       AS a Tester I am verifying that the website basic functionality is woerking as excepected
Library             SeleniumLibrary



*** Variables ***
${HSURL}                     https://www.hs-anhalt.de/startseite.html
${Cookies}                   xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
${Browser}                   chrome
#103
${XPATH_AKTEULLES}           xpath:/html/body/div[2]/div/div/div[1]/div/div/div[2]/ul/li[6]/a
${XPATH_Neuigkeiten}          xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
${XPATH_Alle anzeigen}        xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
#104
${XPATH_Studieren}           xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
${XPATH_Digitale Dienste}    xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
${XPATH_to the Outlook Web App}    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[1]/div/div[2]/a
${XPATH_LOGON}               xpath:/html/body/form/table/tbody/tr[2]/td[2]/table[1]/tbody/tr[4]/td/table/tbody/tr[7]/td[2]/input
#105
${XPATH_to the SSC student porta}    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[2]/div/div[2]/a
${XPATH_Register}                    xpath:/html/body/div[1]/div[1]/div/div/div[3]/div[2]/form[1]/div/button
#106
${XPATH_to the HIS-QIS}              xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
#107
${XPATH_to the learning management system}    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
${XPATH_login}                                xpath:/html/body/div[2]/div[2]/div/div/section/div/div/div/div/form/div[3]/button
#108
${XPATH_KOETHEN}         xpath:/html/body/div[2]/footer/section[2]/div/div[5]/section/div/div/div/div[1]/div/div/a
${XPATH_MAP}              xpath:/html/body/c-wiz/div/div/div/div[2]/div[1]/div[3]/div[1]/div[1]/form[1]/div/div/button
#109
${XPATH_VIEW}           xpath:/html/body/div[2]/main/section[2]/div[4]/div[2]/div/div/div[2]/a
${XPATH_SUCHEN}         xpath:/html/body/div[2]/main/section[2]/div[2]/section/div/div/form/div[2]/div[5]/input
${XPATH_Program}        xpath:/html/body/div[2]/main/section[3]/div[2]/div[2]/div/div[5]/a/div[2]/p
${XPATH_UNIDEGREEREQ}      xpath:/html/body/div[2]/main/section[4]/div/div/div[1]/div/div/div[1]/section/div/div/ul/li[1]/a
${XPATH_LANGUAGEREQ}       xpath:/html/body/div[2]/main/section[4]/div/div/div[1]/div/div/div[1]/section/div/div/ul/li[2]/a
${XPATH_APTITUDETEST}      xpath:/html/body/div[2]/main/section[4]/div/div/div[1]/div/div/div[1]/section/div/div/ul/li[3]/a
${XPATH_REQ}               xpath:/html/body/div[2]/main/section[4]/div/div/div[1]/div/div/div[1]/section
#110
${XPATH_Hochschule}         xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[6]/a
${XPATH_BIBLIOTHEKE}       xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[6]/ul/li[4]/ul/li[2]/a
#111
${XPATH_Forschen}         xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[3]/a
${XPATH_Aktuelle F&E Projekte}    xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[3]/ul/li[1]/ul/li[4]/a
#112
${XPATH_Leben}             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[2]/a
${XPATH_Wohnen}            xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[2]/ul/li[3]/ul/li[1]/a
${XPATH_Offers}            xpath://div[@class="card__content"]
${XPATH_auf Wohnheimplatz bewerben}     xpath:/html/body/div[1]/main/div/div/div[2]/div/div[1]/div[1]/h2/a
${XPATH_ hier gehts zur Online-Wohnheimplatz-Bewerbung}     xpath:/html/body/div[1]/main/div/div/div[1]/div[2]/h2/a
#113
${XPATH_FACEBOOK}           xpath://a[@title="facebook"]
${XPATH_INSTEGRAM}          xpath://a[@title="instagram"]
${XPATH_LINKEDIN}           xpath://a[@title="linkedin"]
${XPATH_TWITTER}            xpath://a[@title="twitter"]
${XPATH_YOUTUBE}            xpath://a[@title="youtube"]
#114
${XPATH_LENS}               xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[7]/a
${XPATH_MAINSEARCH}         xpath://button[@type="submit"]
#115
${XPATH_Karriereservice}    xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[5]/ul/li[7]/a
${XPATH_Praktika & Jobs}    xpath://a[@title="Praktika & Jobs"]
${XPATH_infoButtonCE}       xpath://div[@class="infoButtonCE"]
${XPATH_loginbutton}        xpath://*[@id="sign-in-form"]/form/button
#116
${XPATH_Alle anzeigen}      xpath:/html/body/div[2]/main/section[2]/div[4]/div[2]/div/div/div[2]/a
#117
${XPATH_VIDEO}              xpath://span[@class="icon-ic_playbutton_invert"]
#118
${XPATH_Weitere Angebote}   xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[1]/ul/li[8]/a
${XPATH_Sprachkurse}        xpath:/html/body/div[2]/main/section[3]/section/div[1]/div[2]/div/a
#119
${XPATH_Jobs & Careers}         xpath://*[@id="page10"]/div[2]/footer/section[2]/div/div[1]/ul/li[4]/a
${XPATH_ANMELDUNG}              xpath:/html/body/header/div/div[2]/div[3]/div/div[4]/div/div/div/div/div/div[2]/a
${XPATH_ANMELDEN}               xpath:/html/body/main/div[2]/div/div/div/div[1]/div[1]/div/form/div[3]/button
#120
${XPATH_Formulare}              xpath://*[@id="page10"]/div[2]/footer/section[2]/div/div[3]/ul[1]/li[4]/a
${XPATH_chosenformula}          xpath://*[@id="c3354"]/div[2]/div/div[29]/a

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
    click link             ${XPATH_AKTEULLES}
    scroll element into view   ${XPATH_Neuigkeiten}
    click link             ${XPATH_Alle anzeigen}
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
    mouse over             ${XPATH_Studieren}
    sleep                  5s
    click link             ${XPATH_Digitale Dienste}
    scroll element into view    ${XPATH_to the Outlook Web App}
    click link             ${XPATH_to the Outlook Web App}
    switch window          title=HSA Webmail
    input text             id=username          mostafa
    input text             id=password          15542635
    click button           ${XPATH_LOGON}
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
    mouse over             ${XPATH_Studieren}
    click link             ${XPATH_Digitale Dienste}
    scroll element into view    ${XPATH_to the SSC student porta}
    click link             ${XPATH_to the SSC student porta}
    switch window          locator=NEW
    input text             id=asdf          mostafa
    input text             id=fdsa          15542635
    click button           ${XPATH_Register}
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
    mouse over             ${XPATH_Studieren}
    click link             ${XPATH_Digitale Dienste}
    scroll element into view    ${XPATH_to the HIS-QIS}
    click link             ${XPATH_to the HIS-QIS}
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
    mouse over             ${XPATH_Studieren}
    click link             ${XPATH_Digitale Dienste}
    scroll element into view    ${XPATH_to the learning management system}
    click link             ${XPATH_to the learning management system}
    switch window          title=Moodle Hochschule Anhalt: Log in to the site
    input text             id=username          mostafa
    input text             id=password          15542635
    click button           ${XPATH_login}
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
    scroll element into view    ${XPATH_KOETHEN}
    click link             ${XPATH_KOETHEN}
    click button           ${XPATH_MAP}
    sleep                  10s
    close browser

user can check the requirements of programs
    [Documentation]         As a tseter i want to verify that the user check the requirements of programs offered
    [Tags]                  109   function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${Browser}
    maximize browser window
    click button                ${cookies}
    scroll element into view    ${XPATH_VIEW}
    select from list by label   tx_bwhsacourses_pi1[examSearch]        Master
    select from list by label   tx_bwhsacourses_pi1[locationSearch]    Köthen
    click button                ${XPATH_SUCHEN}
    scroll element into view    ${XPATH_Program}
    click element               ${XPATH_Program}
    scroll element into view    ${XPATH_REQ}
    click link                  ${XPATH_UNIDEGREEREQ}
    click link                  ${XPATH_LANGUAGEREQ}
    click link                  ${XPATH_APTITUDETEST}
    close browser


user can search for books in hochschule library
    [Documentation]         As a tseter i want to verify that the user can search in HS library for books needed
    [Tags]                  110    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${Browser}
    maximize browser window
    click button           ${Cookies}
    mouse over             ${XPATH_Hochschule}
    click link             ${XPATH_BIBLIOTHEKE}
    scroll element into view    name=bquery
    input text             name=bquery         introduction to programming
    press keys             None                ENTER
    switch window          locator=NEW
    sleep                  5s
    close browser

user can search for current R&D projects
    [Documentation]         As a tseter i want to verify that the user can look for new research projects
    [Tags]                  111    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}    ${Browser}
    maximize browser window

    click button           ${Cookies}
    mouse over             ${XPATH_Forschen}
    click link             ${XPATH_Aktuelle F&E Projekte}
    select from list by label   tx_bwhsashowroom_pi1[bwhsashowroom][department]                 Elektrotechnik, Maschinenbau und Wirtschaftsingenieurwesen
    sleep                  5s
    close browser

user can book a room in the student dorm
    [Documentation]         As a tseter i want to verify that the user can search for accomedation in the dorm
    [Tags]                  112    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${Browser}
    maximize browser window
    click button           ${cookies}
    mouse over             ${XPATH_Leben}
    click link             ${XPATH_Wohnen}
    scroll element into view    ${XPATH_Offers}
    click element          ${XPATH_Offers}
    click element          ${XPATH_auf Wohnheimplatz bewerben}
    click element          ${XPATH_ hier gehts zur Online-Wohnheimplatz-Bewerbung}
    close browser

user can follow the hochschule social media platforms
    [Documentation]         As a tseter i want to verify that the user can check HS social media accounts
    [Tags]                  113    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}
    maximize browser window
    click button            ${cookies}
    scroll element into view    ${XPATH_FACEBOOK}
    click element           ${XPATH_FACEBOOK}
    click element           ${XPATH_INSTEGRAM}
    click element           ${XPATH_LINKEDIN}
    go back
    click element           ${XPATH_TWITTER}
    click element           ${XPATH_YOUTUBE}
    close browser

user can use the search bar
    [Documentation]         As a tseter i want to verify that the user can search for any text in the search bar
    [Tags]                  114    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${Browser}
    maximize browser window
    click button           ${cookies}
    click link             ${XPATH_LENS}
    input text             id=searchfield         professor
    click button           ${XPATH_MAINSEARCH}
    close browser


user can log in to job portal in HS
    [Documentation]         As a tseter i want to verify that the user can log in to job portal
    [Tags]                  115    function    Login

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${browser}
    maximize browser window
    click button           ${cookies}
    mouse over             ${XPATH_Studieren}
    click link             ${XPATH_Karriereservice}
    click element               ${XPATH_Praktika & Jobs}
    scroll element into view    ${XPATH_infoButtonCE}
    click element               ${XPATH_infoButtonCE}
    click button                id=didomi-notice-agree-button
    input text                  name=email        mostafa
    input text                  name=password     1234
    click button                ${XPATH_loginbutton}
    close browser

user can check the current events
    [Documentation]         As a tseter i want to verify that the user can look into current events held in the campus
    [Tags]                  116    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}
    click button            ${Cookies}
    maximize browser window
    execute javascript     window.scrollTo(0,2000)
    click link             ${XPATH_Alle anzeigen}
    select from list by label     tx_cal_controller_category_ids    Studierende
    select from list by label     tx_cal_controller_location_ids    Alle Orte
    close browser

user can play the videos in home page
    [Documentation]         As a tseter i want to verify that the user can log in to HSA SSC Student Portal
    [Tags]                  117    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     ${Browser}
    click button            ${Cookies}
    maximize browser window
    execute javascript     window.scrollTo(0,4000)
    click element          ${XPATH_VIDEO}
    close browser

user can check the language courses offered by HS
    [Documentation]         As a tseter i want to verify that the user can log in to HSA SSC Student Portal
    [Tags]                  118    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${Browser}
    click button           ${Cookies}
    maximize browser window
    mouse over             ${XPATH_Studieren}
    click link             ${XPATH_Weitere Angebote}
    execute javascript     window.scrollTo(0,1000)
    click link             ${XPATH_Sprachkurse}
    close browser

user can log in to shop in HS
    [Documentation]         As a tseter i want to verify that the user can log in to job portal
    [Tags]                  119    function    Login

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${browser}
    click button           ${cookies}
    maximize browser window
    execute javascript     window.scrollTo(0,5000)
    click link             ${XPATH_Jobs & Careers}
    click button           id=accountWidget
    click link             ${XPATH_ANMELDUNG}
    input text             name=username          mostafa
    input text             name=password          12345
    click button           ${XPATH_ANMELDEN}
    sleep                  5s
    close browser


user can download needed formulas from HS website
    [Documentation]         As a tseter i want to verify that the user can log in to job portal
    [Tags]                  120    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                    Starting the test case
    open browser           ${HSURL}     ${browser}
    click button           ${cookies}
    maximize browser window
    execute javascript     window.scrollTo(0,5000)
    click link             ${XPATH_Formulare}
    select from list by label       uploads_servicecategory_ids         International Office
    select from list by label       uploads_fbcategory_ids              Alle Fachbereiche
    scroll element into view    ${XPATH_chosenformula}
    click link                  ${XPATH_chosenformula}
    close browser

*** Keywords ***


