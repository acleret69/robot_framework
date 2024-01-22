*** Settings ***
Library  RPA.Browser.Playwright
#Library   Browser

*** Variables ***
${url}       https://www.ebay.com/
${SearchTextBox}  //*[@id="gh-ac"]
${SearchButton}    //*[@id="gh-btn"]

*** Test Cases ***
test1
    open browser    ${url}
    sleep    1s
    press keys    xpath=//html   Meta+A
    Fill Text    ${SearchTextBox}    book
    press keys    ${SearchButton}    Enter
    sleep    3s
    close browser
*** Keywords ***
