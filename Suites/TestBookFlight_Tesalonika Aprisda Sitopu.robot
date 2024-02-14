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
    
    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    text=support@ngendigital.com

    Wait Until Page Contains Element    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
    Input Password    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    text=abc123

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book"]

    Wait Until Page Contains Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]

    Wait Until Page Contains Element    locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/date_picker_header_year"]

    Wait Until Page Contains Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="2024"]
    Click Element    locator=//android.widget.TextView[@resource-id="android:id/text1" and @text="2024"]

    Wait Until Page Contains Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Wait Until Page Contains Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Wait Until Page Contains Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Wait Until Page Contains Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Wait Until Page Contains Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]
    Click Element    locator=//android.widget.ImageButton[@content-desc="Bulan sebelumnya"]

    Wait Until Page Contains Element    locator=//android.view.View[@content-desc="11 Maret 2024"]
    Click Element    locator=//android.view.View[@content-desc="11 Maret 2024"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

    Wait Until Page Contains Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
    Click Element    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]

    Wait Until Page Contains Element    locator=//android.view.View[@content-desc="16 Maret 2024"]
    Click Element    locator=//android.view.View[@content-desc="16 Maret 2024"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element    locator=//android.widget.Button[@resource-id="android:id/button1"]

    Wait Until Page Contains Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
    Click Element    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/price9"]

    Wait Until Page Contains Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

    Wait Until Page Contains Element    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]
    Element Should Contain Text    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]    expected=Your flight is booked. Reservation number is CADX2214

    Close All Applications
    
*** Test Cases ***
Login Book Flight Success
    Test Case 1
