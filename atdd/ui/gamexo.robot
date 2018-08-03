*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:3553/webapp/xo.jsp
${BROWSER}    chrome

*** Test Cases ***
ผู้เล่น player 1 (x) ชนะแนวนอนแถว 1
    เปิดหน้าเว็บOX
    player1 คลิกตำแหน่งแถว2คอลัมน์2
    player2 คลิกตำแหน่งแถว2คอลัมน์1
    player1 คลิกตำแหน่งแถว1คอลัมน์2
    player2 คลิกตำแหน่งแถว3คอลัมน์2
    player1 คลิกตำแหน่งแถว1คอลัมน์3
    player2 คลิกตำแหน่งแถว3คอลัมน์1
    player1 คลิกตำแหน่งแถว1คอลัมน์1
    player1 แสดงผลว่า player1 มี 1 score

*** Keywords ***
เปิดหน้าเว็บOX
    Open Brower    ${URL}    ${BROWSER}
player1 คลิกตำแหน่งแถว2คอลัมน์2
    Click Element    id=R2_C2
    Wait Until Element Contains    id=R2_C2    X
player2 คลิกตำแหน่งแถว2คอลัมน์1
    Click Element    id=R2_C1
    Wait Until Element Contains    id=R2_C1    O
player1 คลิกตำแหน่งแถว1คอลัมน์2
    Click Element    id=R1_C2
    Wait Until Element Contains    id=R1_C2    X
player2 คลิกตำแหน่งแถว3คอลัมน์2
    Click Element    id=R3_C2
    Wait Until Element Contains    id=R3_C2    O
player1 คลิกตำแหน่งแถว1คอลัมน์3
    Click Element    id=R1_C3
    Wait Until Element Contains    id=R1_C3    X
player2 คลิกตำแหน่งแถว3คอลัมน์1
    Click Element    id=R3_C1
    Wait Until Element Contains    id=R3_C1    O
player1 คลิกตำแหน่งแถว1คอลัมน์1
    Click Element    id=R1_C1
    Wait Until Element Contains    id=R1_C1    X
 player1 แสดงผลว่า player1 มี 1 score
    Wait Until Element Contains    id=player1Score    1    
ปิดหน้าเว็บ
    Close Browser