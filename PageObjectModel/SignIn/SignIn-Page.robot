*** Settings ***
Resource                               ../Base/base.robot
Variables                              SignIn_Page.yaml

*** Keywords ***
Input Username
    Wait Until Element Is Visible      locator=${username_input} 
    Input Text                         locator=${username_input}   text=TestUser

Input Password
    Wait Until Element Is Visible      locator=${password_input}
    Input Text                         locator=${password_input}   text=TestUser777

Input Valid Username
    Wait Until Element Is Visible     locator=${username_input}
    Input Text                        locator=${username_input}   text=support@ngendigital.com

Input Valid Password
    Wait Until Element Is Visible       locator=${password_input} 
    Input Text                          locator=${password_input}   text=abc123 

Click Sign In Button On SignIn
    Wait Until Element Is Visible       locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    Click Element                       locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Is Fail To Logged In
          Wait Until Page Contains      text=Invalid username/password

Verify User Is Success Logged In
           Wait Until Page Contains      text=Sign Out


