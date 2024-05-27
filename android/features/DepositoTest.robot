*** Settings ***
Resource    ../../base.robot
Resource    ../pages/DepositoPage.robot

Test Setup       Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível escolher a forma de depósito
    Dado que o usuário está na página inicial do Aplicativo
    Quando selecionar o botão "Depositar"
    Então deve ser possível escolher a forma de depósito

CT002 - Deve ser possível fazer depósito via Pix 
    Dado que o usuário está na página inicial do Aplicativo
    Quando selecionar o botão "Depositar"
    Então deve ser possível visualizar a opção "Pix"

CT003 - Deve ser possível fazer depósito via Boleto 
    Dado que o usuário está na página inicial do Aplicativo
    Quando selecionar o botão "Depositar"
    Então deve ser possível visualizar a opção "Boleto"

CT004 - Deve ser possível fazer depósito via TED/DOC
    Dado que o usuário está na página inicial do Aplicativo
    Quando selecionar o botão "Depositar"
    Então deve ser possível visualizar a opção "TED/DOC"

CT005 - Deve ser possível visualizar a opção "Trazer seu salário"
    Dado que o usuário está na página inicial do Aplicativo
    Quando selecionar o botão "Depositar"
    Então deve ser possível visualizar a opção "Trazer seu salário"
