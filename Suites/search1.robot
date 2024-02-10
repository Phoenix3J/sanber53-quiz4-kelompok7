*** Settings ***
Resource             ../pageObject/HomePage1/home-page.robot
Resource             ../pageObject/SearchPage1/search-page.robot
Resource             ../pageObject/LoginPage1/login-page.robot



*** Test Cases ***
Search with input a valid flight number
        Open Flight Application
        Click Sign In Button On Home Page
        Input Valid Username
        Input Valid Password
        Click Sign In Button On Login page
        Verify User Is Success Logged In
        Click Search Button on Home Page
        Input Flight No Static
        Click Search Flight No Button on Search Page
        Verify search Success
        Back to home page
        Go Back


*** Test Cases ***
Search numeric flight no
        Click Search Button on Home Page
        Input Numeric Flight No
        Click Search Flight No Button on Search Page
        Verify cant search with blank/Alphabet/Invalid/numeric flight no
        Back to home page

*** Test Cases ***
Search Alphabet flight no
        Click Search Button on Home Page
        Input Alphabet Flight No
        Click Search Flight No Button on Search Page
        Verify cant search with blank/Alphabet/Invalid/numeric flight no
        Back to home page

*** Test Cases ***
Search without input flight no (only click button)
        Click Search Button on Home Page
        Click Search Flight No Button on Search Page
        Verify cant search with blank/Alphabet/Invalid/numeric flight no
        Back to home page


