*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
Login test
    [Documentation]    Ceci est un test de login/LogOut
    Open Browser  ${url}   ${Browser}  executable_path=${Path} 
    Maximize Browser Window
    Input Text    id:txtUsername  ${Logins}[username]                          #${Logins}[0]
    Input Password    id:txtPassword  ${Logins}[password]                     #${Logins}[1]  
    Click Button    btnLogin
    Click Element    welcome 
    Set Browser Implicit Wait    5
    Click Element    link=Logout  
    Log    Ceci est un test execute par %{USER} dans %{os}    
    Log  Fin de test.     
    
*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Path}  /Users/samirasamah/Desktop/BrowserDriver/chromedriver 
${Browser}  gc 
#@{Logins}   Admin  admin123
&{Logins}   username=Admin  password=admin123
  