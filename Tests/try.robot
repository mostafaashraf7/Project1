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
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[6]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[6]/ul/li[4]/ul/li[2]/a
    scroll element into view    name=bquery
    input text             name=bquery         introduction to programming
    press keys             None                ENTER
    switch window          locator=NEW
    sleep                  5s
    close browser



*** Keywords ***