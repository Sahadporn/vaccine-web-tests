*** Settings ***
Documentation   Some test using seleniumlibrary
Library          SeleniumLibrary

*** Variables ***
${URL}      https://vaccine-haven.herokuapp.com/
${BROWSER}  Chrome
${CITIZENID}    9621054561123
${VACCINE}  Pfizer
${SITE}     OGYHSite

*** Keywords ***
Open browser to homepage
    Open Browser    ${URL}  ${BROWSER}

Go to reservation page
    Click Link       id:reserve__link

Input ID
    Input Text  id:citizen_id  ${CITIZENID}

Choose site
    Select From List By Value   id:site_name    ${SITE}

Choose vaccine
    Select From List By Value   id:vaccine_name  ${VACCINE} 

Submit form
    Click Button     id:reserve__btn

Go to info page
    Click Link       id:check_info__link

Press submit
    Click Button    id:info__btn

Check for vaccine and site
    Wait Until Element Contains   id:reserve_vaccine_value    ${VACCINE} 
    Element Text Should Be        id:reserve_vaccine_value    ${VACCINE} 
    Wait Until Element Contains   id:reserve_site_value    ${SITE}
    Element Text Should Be        id:reserve_site_value    ${SITE}

Cancel reservation
    Click Button    id:cancel__btn

Close current browser
    sleep   3s
    Close Browser

*** Test Cases ***
Add reservation
    Open browser to homepage
    Go to reservation page
    Input ID
    Choose site
    Choose vaccine
    Submit form
    Close current browser

Check reservation
    Open browser to homepage
    Go to info page
    Input ID
    Press submit
    Check for vaccine and site
    Close current browser
