*** Settings ***
Documentation       AS a Tester I am verifying that the website home page basic functionality is woerking as excepected
Library             SeleniumLibrary

#run the script
#robot -d results tests/HomePage.robot

*** Variables ***
${HSURL}                     https://www.hs-anhalt.de/startseite.html
${Cookies}                   xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
${Browser}                   chrome
#103
${XPATH_AKTEULLES}           xpath:/html/body/div[2]/div/div/div[1]/div/div/div[2]/ul/li[6]/a
${XPATH_Neuigkeiten}         xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
${XPATH_Alle anzeigen}       xpath:/html/body/div[2]/main/section[3]/div[3]/div[3]/a
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
${XPATH_Hochschul}         xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[6]/a
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
${XPATH_Alle anzeigen}      xpath://*[@id="c885"]/div[2]/section/div/div[2]/a
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





*** Keywords ***