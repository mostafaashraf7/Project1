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
user can log in to shop in HS
    [Documentation]         As a tseter i want to verify that the user can log in to job portal
    [Tags]                  120    function    Login

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




*** Keywords ***