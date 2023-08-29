*** Settings ***
Documentation       AS a Tester I am verifying that the website login basic functionality is woerking as excepected
Library             SeleniumLibrary

*** Variables ***



*** Test Cases ***
User is able to log in to HSA Webmail
    [Documentation]         As a tseter i want to verify that the user can log in to HSA Webmail
    [Tags]                  104    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            https://www.hs-anhalt.de/startseite.html    chrome
    maximize browser window

    click button           xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
    sleep                  5s
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    sleep                   5s
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
    [Tags]                  105    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            https://www.hs-anhalt.de/startseite.html    chrome
    maximize browser window

    click button           xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
    sleep                  5s
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    sleep                   5s
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[2]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[2]/div/div[2]/a
    switch window          locator=NEW
    input text             id=asdf          mostafa
    input text             id=fdsa          15542635
    click button           xpath:/html/body/div[1]/div[1]/div/div/div[3]/div[2]/form[1]/div/button
    sleep                  5s
    close browser

Log in to HISQIS
    [Documentation]         As a tseter i want to verify that the user can log in to HISQIS
    [Tags]                  106    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            https://www.hs-anhalt.de/startseite.html    chrome
    maximize browser window

    click button           xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
    sleep                  5s
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    sleep                   5s
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[1]/div[3]/div/div[2]/a
    switch window          locator=NEW
    input text             id=asdf          mostafa
    input text             id=fdsa          15542635
    click element          submit
    sleep                  5s
    close browser

User is able to log in to Moodle
    [Documentation]         As a tseter i want to verify that the user can log in to HSA Webmail
    [Tags]                  107    function    Home

        #intialize selenium
    set selenium speed      .2s
    set selenium timeout    10s

    #open browser
    log                     Starting the test case
    open browser            https://www.hs-anhalt.de/startseite.html    chrome
    maximize browser window

    click button           xpath://*[@id="SgCookieOptin"]/div/div[1]/button[1]
    mouse over             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/a
    click link             xpath:/html/body/div[2]/div/div/div[2]/div/div/div[2]/ul/li[1]/ul/li[3]/ul/li[2]/a
    scroll element into view    xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    click link             xpath:/html/body/div[2]/main/section[3]/div[2]/section/div[2]/div[1]/div/div[2]/a
    switch window          title=Moodle Hochschule Anhalt: Log in to the site
    input text             id=username          mostafa
    input text             id=password          15542635
    click button           xpath:/html/body/div[2]/div[2]/div/div/section/div/div/div/div/form/div[3]/button
    close browser
*** Keywords ***
