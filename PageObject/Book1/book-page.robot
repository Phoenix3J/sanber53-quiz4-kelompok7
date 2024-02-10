*** Settings ***
Resource                               ../base/base.robot
Variables                              Book-locator.yaml

*** Keywords ***
Click OneWay
    Wait Until Element Is Visible    locator=${oneway_btn}
    Click Element    locator=${oneway_btn}
Click RoundTrip
    Wait Until Element Is Visible    locator=${roundtrip_btn}
    Click Element    locator=${roundtrip_btn}
Choose From City
    Click Element    locator=${from_droplist}
    Wait Until Element Is Visible    //android.widget.TextView[@text="Chicago"]
    Click Text    text=Chicago

Choose To City
    Click Element    locator=${to_droplist}
    Wait Until Page Contains    //android.widget.TextView[@text="Ottawa"]
    Click Text    text=Ottawa

Choose Class Flight
    Click Element    locator=${classFlight_droplist}
    Click Text    text=Economy

Choose Start and End Date
    Wait Until Element Is Visible    locator=${startDate_btn}
    Click Element    locator=${startDate_btn}
    Get Element Attribute    locator=${startDate_btn}    attribute=@content-desc="03 August 2019"
    Wait Until Element Is Visible    locator=${startDate_btn}
    Click Element    locator=${endDate_btn}
    Get Element Attribute    locator=${endDate_btn}    attribute=@content-desc="09 August 2019"

Choose Flight Only
    Click Element    locator=${FlightOnly_radioBtn}
Choose Flight + Hotel
    Click Element    locator=${FlightHotel_radioBtn}
Check Plus/Minus Day
    Click Element    locator=${plusMinusDay_checkbox}

Click Book flight button
    Click Element    locator=${bookFlight_btn}
