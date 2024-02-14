*** Settings ***

Resource                                    ../Base/base.robot
Variables                                   home-locator.yaml

*** Keyword ***

Click SignIn button On HomePage
        Click Element                        locator=${login_btn}



