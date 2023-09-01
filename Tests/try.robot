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



*** Keywords ***