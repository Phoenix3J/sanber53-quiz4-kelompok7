*** Settings ***
Library                             AppiumLibrary

*** Keywords ***
Test Case 1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=11.0
    ...                 deviceName=9T55V8J7NRA6FEKR
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
        
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=ririsiyut

    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=wrongpassword

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Page Should Contain Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Close All Applications

Test Case 2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=11.0
    ...                 deviceName=9T55V8J7NRA6FEKR
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
        
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=ririsiyut

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Page Should Contain Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Close All Applications

Test Case 3
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=11.0
    ...                 deviceName=9T55V8J7NRA6FEKR
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com

    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Element Should Contain Text    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]    expected=Sign Out

    Close All Applications
*** Test Cases ***
Login with Invalid Data TC 1
    Test Case 1

Login with username Only
    Test Case 2
Login with Valid Data TC 2
    Test Case 3