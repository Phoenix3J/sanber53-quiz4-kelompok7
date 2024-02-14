*** Settings ***

Library                 AppiumLibrary

*** Keywords ***

Test Case 1
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=9.0
    ...                 deviceName=RR8M40C562N
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=tesalonikastp

    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=wrongpassword

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Page Should Contain Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Close All Applications

Test Case 2
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=9.0
    ...                 deviceName=RR8M40C562N
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=gabrielhtg

    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=inipasswordsalah

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Page Should Contain Element    locator=//android.widget.Toast[@text="Invalid username/password"]

    Close All Applications

Test Case 3
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=9.0
    ...                 deviceName=RR8M40C562N
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

Test Case 4
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 platformName=android
    ...                 platformVersion=9.0
    ...                 deviceName=RR8M40C562N
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity
    
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com

    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

    Click Element    locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]

    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="2024"]

    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Click Element    locator=//android.view.View[@content-desc="11 Maret 2024"]

    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

    Click Element    locator=//android.view.View[@content-desc="16 Maret 2024"]

    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]

    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

    Element Should Contain Text    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]    expected=Your flight is booked. Reservation number is CADX2214

    Close All Applications
    
*** Test Cases ***
Login with Invalid Data TC 1
    Test Case 1

Login with Invalid Data TC 2
    Test Case 2

Login Success Test
    Test Case 3