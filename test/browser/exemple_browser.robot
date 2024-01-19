*** Settings ***
Library  SeleniumLibrary
Resource    ../../resources/CommonFunctionnality.robot
Resource    ../../resources/pageObject/headerPage.robot
Resource    ../../resources/pageObject/SearchResultPage.robot
Resource    ../../resources/Filter.robot

Test Setup    CommonFunctionnality.Start TestCase
Test Teardown    CommonFunctionnality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify search functionality
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

   HeaderPage.Input Search Text and Click Search    books
   SearchResultPage.Verify Search Results    books

Verify search and filter functionality
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

   HeaderPage.Input Search Text and Click Search    mobile
   SearchResultPage.Verify Search Results    mobile
   filter results by condition
   verifiy filter results

*** Keywords ***



