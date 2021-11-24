*** Settings ***
Documentation   Some test using seleniumlibrary
Library          SeleniumLibrary

*** Variables ***
${URL}      https://vaccine-haven.herokuapp.com/
${BROWSER}  Chrome
${CITIZENID}    9621054561123
${FIRSTNAME}    Jane
${LASTNAME}     Enaj
${BIRTHDAY}     03/01/1991
${OCCUPATION}   Worker
${PHONE}        09828345578
${ADDRESS}      Lad Prao 91

*** Keywords ***
Open Browser to homepage
    Open Browser    ${URL}  ${BROWSER}

Go to registration page
    Click Link       xpath://*[@id="root"]/div/div[2]/section[1]/div/div/div/div/div[2]/a

Input info
    Input Text  name:citizen_id     ${CITIZENID}
    Input Text  name:name           ${FIRSTNAME}
    Input Text  name:surname        ${LASTNAME}
    Input Text  name:birth_date     ${BIRTHDAY}
    Input Text  name:occupation     ${OCCUPATION}
    Input Text  name:phone_number   ${PHONE}
    Input Text  name:address        ${ADDRESS}

Submit registration
    Click Button     class:btn-info

*** Test Cases ***
Check vacination
    Open Browser to homepage
    Go to registration page
    Input info
    Submit registration


