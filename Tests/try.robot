*** Settings ***
Documentation       AS a Tester I am verifying that the website home page basic functionality is woerking as excepected
Library             SeleniumLibrary

#run the script
#robot -d results tests/HomePage.robot

*** Variables ***
${HSURL}                     https://www.hs-anhalt.de/startseite.html
${Cookies}                   xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]

*** Test Cases ***
user can check the language courses offered by HS
    [Documentation]         As a tseter i want to verify that the user can log in to HSA SSC Student Portal
    [Tags]                  105    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            ${HSURL}     chrome
    click button           xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
    maximize browser window
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[1]/ul/li[8]/a
    execute javascript     window.scrollTo(0,1000)
    click link             xpath:/html/body/div[2]/main/section[3]/section/div[1]/div[2]/div/a
    sleep                  5s
    close browser


*** Keywords ***