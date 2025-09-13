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
    Input Phone    081-001-1234
    Sleep    1s
    Submit Register
    Sleep    1s
    Title Should Be    Event Registration
    Element Text Should Be    id=errors    Please enter your email!!
    [Teardown]    Close Browser
