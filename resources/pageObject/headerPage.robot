*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SearchTextBox}  xpath://*[@id="gh-ac"]
${SearchButton}    xpath://*[@id="gh-btn"]

*** Keywords ***
Input Search Text and Click Search
    [Arguments]    ${search_text}
    Input Text    ${SearchTextBox}    ${search_text}
    Press Keys    ${SearchButton}    [return]