*** Settings ***
Resource    ../../base.robot
Resource    ../pages/EmprestimoPage.robot

Test Setup       Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível visualizar o valor de empréstimo disponível
    Dado que o cliente está na página inicial
    Quando selecionar o botão "Empréstimos"
    Então deve ser possível visualizar o valor de empréstimo disponível

CT002 - Deve ser possível visualizar o botão "Entenda como funciona"
    Dado que o cliente está na página inicial
    Quando selecionar o botão "Empréstimos"
    Então deve ser possível visualizar o botão "Entenda como funciona"
    
CT003 - Deve ser possível visualizar o botão "Novo Empréstimo"
    Dado que o cliente está na página inicial
    Quando selecionar o botão "Empréstimos"
    Então deve ser possível visualizar o botão "Novo Empréstimo"

CT004 - Deve ser possível visualizar se existe algum empréstimo ativo
    Dado que o cliente está na página inicial
    Quando selecionar o botão "Empréstimos"
     Então deve ser possível visualizar se existe algum empréstimo ativo 