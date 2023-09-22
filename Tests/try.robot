*** Settings ***
Documentation       AS a Tester I am verifying that the website home page basic functionality is woerking as excepected
Library             SeleniumLibrary

#run the script
#robot -d results tests/HomePage.robot

*** Variables ***
${HSURL}                     https://www.hs-anhalt.de/startseite.html
${Cookies}                   xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
${Browser}                   chrome

*** Test Cases ***
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
    click link             xpath://*[@id="page10"]/div[2]/footer/section[2]/div/div[3]/ul[1]/li[4]/a
    select from list by label       uploads_servicecategory_ids         International Office
    select from list by label       uploads_fbcategory_ids              Alle Fachbereiche
    scroll element into view    xpath://*[@id="c3354"]/div[2]/div/div[29]/a
    click link                  xpath://*[@id="c3354"]/div[2]/div/div[29]/a
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
    scroll element into view    xpath://a[@title="facebook"]
    click element           xpath://a[@title="facebook"]
    click element           xpath://a[@title="instagram"]
    click element           xpath://a[@title="linkedin"]
    go back
    click element           xpath://a[@title="twitter"]
    click element           xpath://a[@title="youtube"]
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
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[7]/a
    input text             id=searchfield         professor
    click button           xpath://button[@type="submit"]
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
    click button           ${cookies}
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[5]/ul/li[7]/a
    maximize browser window
    click element               xpath://a[@title="Praktika & Jobs"]
    scroll element into view    xpath://div[@class="infoButtonCE"]
    click element               xpath://div[@class="infoButtonCE"]
    click button                id=didomi-notice-agree-button
    input text                  name=email        mostafa
    input text                  name=password     1234
    click button                xpath://*[@id="sign-in-form"]/form/button
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
    click link             xpath://*[@id="c885"]/div[2]/section/div/div[2]/a
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
    click element          xpath://span[@class="icon-ic_playbutton_invert"]
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
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[1]/ul/li[8]/a
    execute javascript     window.scrollTo(0,1000)
    click link             xpath:/html/body/div[2]/main/section[3]/section/div[1]/div[2]/div/a
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
    click link             xpath://*[@id="page10"]/div[2]/footer/section[2]/div/div[1]/ul/li[4]/a
    click button           id=accountWidget
    click link             xpath:/html/body/header/div/div[2]/div[3]/div/div[4]/div/div/div/div/div/div[2]/a
    input text             name=username          mostafa
    input text             name=password          12345
    click button           xpath:/html/body/main/div[2]/div/div/div/div[1]/div[1]/div/form/div[3]/button
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
    click link             xpath://*[@id="page10"]/div[2]/footer/section[2]/div/div[3]/ul[1]/li[4]/a
    select from list by label       uploads_servicecategory_ids         International Office
    select from list by label       uploads_fbcategory_ids              Alle Fachbereiche
    scroll element into view    xpath://*[@id="c3354"]/div[2]/div/div[29]/a
    click link                  xpath://*[@id="c3354"]/div[2]/div/div[29]/a
    close browser



*** Keywords ***