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
    Input Phone    081-001-1234
    Sleep    1s
    Submit Register
    Sleep    1s
    Success Page Should Be Open
    Element Text Success Should Be    Success
    Element Text Thanks Should Be    Thank you for participating in our event 
    [Teardown]    Close Browser
