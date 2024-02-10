*** Settings ***
Resource                               ../base/base.robot
Variables                              home-locator.yaml

*** Keywords ***
Click Sign In Button On Home Page
    Click Element                      locator=${login_btn}
Click Search Button on Home Page
    Click Element                       locator=${search_btn}
Click Book Button on Home Page
    Click Element    locator=${book_btn}