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




*** Keywords ***