*** Settings ***
Library    ExcelLibrary
Library    Collections
Library    RPA.Excel.Files

*** Variables ***
${EXCEL_FILE}   exemple.xlsx

*** Test Cases ***

test excel
    [Documentation]    This test case excel
    Test Excel Create File
    Test create employer worksheet
    Close All Excel Documents

test excel2 avec RPA
    Test create employer worksheet

*** Keywords ***

Test Excel Create File
    Create Excel Document	doc_id=docfilTest

    #get list sheet names
    ${sheets}=	Get List Sheet Names
    log    ${sheets}

    #crée une ligne et ecrire une ligne
    ${row}=	Create List    nom    prenom    age
    Write Excel Row    row_num=1    col_offset=0    row_data=${row}    sheet_name=${sheets}[0]

    #crée une ligne et ecrire une ligne
    ${row_1}=	Create List    do    john    20
    Write Excel Row    row_num=2    col_offset=0    row_data=${row_1}    sheet_name=${sheets}[0]

    # verication de l'insertion de la ligne
    ${verif_row}=  read excel row    row_num=2  max_num=0    sheet_name=${sheets}[0]
    Lists Should Be Equal    ${verif_row}    ${row_1}

    #crée une liste et ecrire une colonne
    ${column}=	Create List		adresse    20 rue des bois
    Write Excel Column	col_num=4	row_offset=0    col_data=${column}    sheet_name=${sheets}[0]

    # verication de l'insertion de la colonne
    ${verif_column}=  Read Excel Column  col_num=4  max_num=0    sheet_name=${sheets}[0]
    Lists Should Be Equal    ${verif_column}    ${column}

    Save Excel Document     ${EXCEL_FILE}

    create excel document    doc=id = test

    Save Excel Document     exemple2.xlsx

Test create employer worksheet

    Open Workbook    ${EXCEL_FILE}

    # Create a new blank worksheet named "Customers"
    create worksheet    customer    exist_ok=True

    # Create a new workseet using a List of Dictionaries
    # Don't forget to Save Workbook once your changes are complete
    &{Employees_Row1}=    Create Dictionary    name=Mark    age=${58}
    &{Employees_Row2}=    Create Dictionary    name=John    age=${22}
    &{Employees_Row3}=    Create Dictionary    name=Adam    age=${67}
    @{Worksheet_Data}=    Create List
...    ${Employees_Row1}
...    ${Employees_Row2}
...    ${Employees_Row3}

    Create Worksheet
...    name=Employees
...    content=${Worksheet_Data}
...    header=True
...    exist_ok=True

    save workbook    ${EXCEL_FILE}

    Close Workbook

