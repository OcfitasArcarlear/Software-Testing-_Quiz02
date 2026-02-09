*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser    https://access.line.me/oauth2/v2.1/login?returnUri=%2Foauth2%2Fv2.1%2Fauthorize%2Fconsent%3Fresponse_type%3Dcode%26client_id%3D2005931231%26redirect_uri%3Dhttps%253A%252F%252Fchiangmuan.igovapp.com%252Fapi%252Fmethod%252Figovapp.api.line_login%26state%3DeyJzaXRlIjoiaHR0cHM6Ly9jaGlhbmdtdWFuLmlnb3ZhcHAuY29tIiwidG9rZW4iOiI5YzQyNDJhZGMzNGRkM2NjZDM3NDg1MWVhMmIzYzk1YWZlN2EzMWE0MDM1M2Y3NGNjYWM5Y2U2ODkzMGI5OTBkIiwicmVkaXJlY3RfdG8iOm51bGx9%26scope%3Dprofile%2520openid%2520email%26bot_prompt%3Daggressive&loginChannelId=2005931231&loginState=iaJQpa4rumu4n5YwG3rlnK#/    Chrome
Suite Teardown      Close Browser    

*** Variables ***
${th}        ไทย

*** Keywords ***
click Element email
    Click Element   //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]

input Email 
    Input Text    //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input  dragonearth5566@gmail.com

Click Element password
    Click Element   //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]

Input Password 
    Input Text    //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input  Dragonworld5566

click Element login button
    Click Element   //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button

click Element ฐานข้อมูล
    click Element  //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]

Click Element ประวัติการเตรวจสุขภาพ
    click Element  //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a



*** Test Cases ***
RF02-Verify that user can input email in the email field
    click Element email
    input Email
    Sleep    2s
    Click Element password
    Input Password
    Sleep    2s
    click Element login button
    Sleep    10s
    click Element ฐานข้อมูล
    Sleep    5s
    Click Element ประวัติการเตรวจสุขภาพ
    Sleep    5s

    


