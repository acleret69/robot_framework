*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}    https://www.ebay.com/
${browser}    Edge

*** Keywords ***
Start TestCase
    [Documentation]    Test qui permet d'ouvrir le browser , d'ouvir en grand , exécuter cmd+A
    open browser    ${url}    ${browser}
    maximize browser window
    Press Keys    None    COMMAND+A
    sleep    5s

Finish TestCase
    Close browser


