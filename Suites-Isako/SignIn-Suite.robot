*** Settings ***

Resource                        ../PageObjectModel/Home-Page/home_page.robot
Resource                        ../PageObjectModel/SignIn/SignIn-Page.robot
Resource                        ../PageObjectModel/Search/Searching-Page.robot

*** Test Cases ***
Login with Invalid Data

        Open Flight Application
        Click Sign In Button On Home Page
        Input Valid Username
        Input Valid Password
        Click Sign In Button On Sign In
        Verify User Is Success Logged In
        Input Invalid Flight No Code
        Input Alphabet Flight No Code
        Input Numeric Flight No Code
        Click Search Flight Button
        Verify search Success
        Verify cant search with blank/Alphabet/Invalid/numeric flight no
        Back to home page

