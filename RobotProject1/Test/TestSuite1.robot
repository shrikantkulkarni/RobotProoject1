*** Settings ***
Library           SeleniumLibrary


Suite Setup    Log    I am entering inside test suite setup 
Suite Teardown    Log    I am inside test suit teardown 
Test Setup    Log    I am entering inside test setup
Test Teardown    Log    I am inside Test teardown
    
*** Test Cases ***
MyFirstTest
    Log    Hello World...
    
MySecondTest
    Log    Hello World war 2...
    
FirstSeleniumTest
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    3
    Input Text    name=q    robot framework
    Sleep    3    
    Press Keys    name=q    ENTER
    #Click Button    name=btnK    
    Sleep    3       
    Close Browser
    
    
SimpleLogin
    Open Browser    ${URL}    chrome 
    Set Selenium Implicit Wait    4
    LoginKW
    Click Element    id=welcome 
    Click Element    link=Logout
    Close Browser            
    Log    test executed succesfully
    Log    This test is executed by %{Username} on %{os}
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    Username=Admin   Password=admin123 

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[Password]
    Click Button    id=btnLogin
    