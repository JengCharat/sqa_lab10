*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         127.0.0.1:50867
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${REGISTER URL}      http://${SERVER}/Registration.html
${Success URL}    http://${SERVER}/Success.html

*** Keywords ***
Open Browser To Register Page
    Open Browser    ${REGISTER URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Event Registration

Go To Login Page
    Go To    ${REGISTER URL}
    Login Page Should Be Open

Input Firstname
    [Arguments]    ${firstname}
    Input Text    firstname    ${firstname}

Input Lastname
    [Arguments]    ${lastname}
    Input Text    lastname    ${lastname}

Input Organization
    [Arguments]    ${organization}
    Input Text    organization    ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    email    ${email}

Input Phone
    [Arguments]    ${phone}   
    Input Text     phone    ${phone}

Submit Register
    Click Button    registerButton

Success Page Should Be Open
    Location Should Contain    ${SUCCESS URL}
    Title Should Be    Success

Element Text Success Should Be
    [Arguments]    ${text}
    Element Text Should Be    //h1    ${text}

Element Text Thanks Should Be
    [Arguments]    ${text}
    Element Text Should Be    //h2    ${text}

