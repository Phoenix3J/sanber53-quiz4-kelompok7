*** Settings ***

Resource                        ../Base/base.robot
Variables                       Searching.yaml

*** Keywords ***
Input Flight No Static
        Wait Until Element Is Visible               locator=${search_textinput}
        Input Text                                  locator=${search_textinput}        text=DA935
 
Input Invalid Flight No Code
        Wait Until Element Is Visible                locator=${search_textinput} 
        Input Text                                   locator=${search_textinput}       text=Ambiyu

Input Alphabet Flight No Code
        Wait Until Element Is Visible                locator=${search_textinput} 
        Input Text                                   locator=${search_textinput}        text=Ambiyu

Input Numeric Flight No Code
        Wait Until Element Is Visible                 locator=${search_textinput} 
        Input Text                                    locator=${search_textinput}        text=272727

Click Search Flight Button 
        Wait Until Element Is Visible                 locator=${searchflightno_btn}
        Click Element                                 locator=${searchflightno_btn}


Verify search Success
        Wait Until Page Does Not Contain             locator=${search_textinput}          text=Please enter valid Flight Number

Verify cant search with flight no code
        Wait Until Page Contains                      locator=${search_textinput}         text=Please enter valid Flight Number

Back to home page
        Go Back                                       