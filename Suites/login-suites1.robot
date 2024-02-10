***settings***
Resource             ../pageObject/HomePage1/home-page.robot
Resource             ../pageObject/LoginPage1/login-page.robot

*** Test Cases ***
Login with Invalid Data
        Open Flight Application
        Click Sign In Button On Home Page
        Input Username
        login-page.Input Password
        Click Sign In Button On Login page
        Verify User Is Failed Logged In
        Close Flight Appication

*** Test Cases ***
Login with Username Only
        Open Flight Application
        Click Sign In Button On Home Page
        Input Username
        Click Sign In Button On Login page
        Verify User Is Failed Logged In
        Close Flight Appication

*** Test Cases ***
Login with Password Only
        Open Flight Application
        Click Sign In Button On Home Page
        login-page.Input Password
        Click Sign In Button On Login page
        Verify User Is Failed Logged In
        Close Flight Appication

*** Test Cases ***
Login with Valid Data
        Open Flight Application
        Click Sign In Button On Home Page
        Input Valid Username
        Input Valid Password
        Click Sign In Button On Login page
        Verify User Is Success Logged In
        Close Flight Appication


*** Test Cases ***
Login without input username or password (only click button signin)
        Open Flight Application
        Click Sign In Button On Home Page
        Click Sign In Button On Login page
        Verify User Is Failed Logged In
        Close Flight Appication
