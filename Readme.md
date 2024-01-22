Robot Framework 
===
le projet teste robot framework avec SeleniumLibrary , ExcelLibrary et RPA.Excel.Files.

Utilisation faite avec PyCharm.

### Prérequis d'installation 

- pip install robotframework 
- pip install robotframework-appiumlibrary (optionnel juste si besoin)
- pip install robotframework-seleniumlibrary
- pip install robotframework-datadriver (optionnel juste si besoin)
- pip install robotframework-excellib
- pip install rpaframework
- pip install robotframework-browser

#### Dans le Projet pour le fichier avec RPA_browser

éxecuter: rfbrowser init

### Commande à exécuter pour tester

le projet se lance en ligne de command : 

| fichier             | commande                                       |
|---------------------| ------------- |
| exemple_browser     | robot -d result test/browser/exemple_browser.robot |
| exemple_RPA_browser | robot -d result test/RPA_browser/exemple_RPA_browser.robot|
| exemple_excel       |robot -d result test/excel/exemple_excel.robot|

## Documentation

RPA.Excel.Files : 
https://rpaframework.org/libdoc/RPA_Excel_Files.html#library-documentation-top

ExcelLibrary :
https://rawgit.com/peterservice-rnd/robotframework-excellib/master/docs/ExcelLibrary.html#Save%20Excel%20Document

SeleniumLibrary :
https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#library-documentation-top

RPA.Browser.Playwright :
https://rpaframework.org/libraries/browser_playwright/index.html#playwright