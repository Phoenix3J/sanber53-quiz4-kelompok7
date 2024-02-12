*** Settings ***
Resource             ../pageObject/HomePage1/home-page.robot
Resource             ../pageObject/Book1/Book-page.robot
Resource             ../pageObject/LoginPage1/login-page.robot

*** Test Cases ***
Book flight normally
        Open Flight Application
        Click Sign In Button On Home Page
        Input Valid Username
        Input Valid Password
        Click Sign In Button On Login page
        Verify User Is Success Logged In
        Click Book Button on Home Page
        Choose Flight Only
        Click Book flight button
        Click Price
        Click confirm order
        Verify done order
        
