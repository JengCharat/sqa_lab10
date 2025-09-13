*** Settings ***
Documentation     A test suite with a single test for valid login.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Register Page
    Sleep    1s
    Input Firstname    Somsri
    Sleep    1s
    Input Lastname    Sodsai
    Sleep    1s
    Input Organization    CS KKU
    Sleep    1s
    Input Email    somsri@kkumail.com
    Sleep    1s
    Input Phone    1234
    Sleep    1s
    Submit Register
    Sleep    1s
    Title Should Be    Event Registration
    Element Text Should Be    id=errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678
    [Teardown]    Close Browser
