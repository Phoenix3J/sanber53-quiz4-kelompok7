*** Settings ***
Resource                               ../Base/base.robot
Variables                             Searching_Page.yaml

*** Keywords ***
Input Flight No Static
    Wait Until Element Is Visible    locator=${search_textinput} 
    Input Text    locator=${search_textinput}    text=DA935
Input Invalid Flight No
    Wait Until Element Is Visible    locator=${search_textinput} 
    Input Text    locator=${search_textinput}    text=ABC122
Input Alphabet Flight No
    Wait Until Element Is Visible    locator=${search_textinput} 
    Input Text    locator=${search_textinput}    text=ABCABC
Input Numeric Flight No
    Wait Until Element Is Visible    locator=${search_textinput} 
    Input Text    locator=${search_textinput}    text=111222
Click Search Flight No Button on Search Page
    Wait Until Element Is Visible    locator=${searchflightno_btn}
    Click Element                        locator=${searchflightno_btn}

Verify search Success
    Wait Until Page Does Not Contain   text=Please enter valid Flight Number
Verify cant search with blank/Alphabet/Invalid/numeric flight no
    Wait Until Page Contains    text=Please enter valid Flight Number
Back to home page
    Go Back