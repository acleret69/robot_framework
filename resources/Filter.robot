*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Filter results by condition
    click button    xpath://html/body/div[4]/div[4]/div[1]/div/div[2]/div[2]/div[2]/span[1]/button
    sleep    3s
#    mouse down    //*[@id="s0-53-16-5-4[0]-64[1]-19-content-menu"]/li[2]/a
    click element    //*[@id="s0-53-16-5-4[0]-64[1]-19-content-menu"]/li[2]/a

Verifiy filter results
    Element Should Contain    xpath:/html/body/div[4]/div[4]/div[2]/div[1]/div[2]/ul/li[1]/div/div/div/div/div/ul/li[1]/div/a/div  New
