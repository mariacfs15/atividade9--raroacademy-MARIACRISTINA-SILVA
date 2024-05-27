*** Settings ***
Resource    ../../base.robot
Resource    ../pages/CartaoPage.robot

Test Setup       Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível visualizar o valor da fatura atual 
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o valor da fatura atual

CT002 - Deve ser possível visualizar o valor do Limite disponível 
    Dado que o usuário está na página inicial do App 
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o valor do Limite disponível 

CT003 - Deve ser possível visualizar o botão de pagamento de fatura  
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o botão de pagamento de fatura 

CT004 - Deve ser possível visualizar o botão resumo das faturas  
    Dado que o usuário está na página inicial do App 
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o botão resumo das faturas 

CT005 - Deve ser possível visualizar o botão ajustar limites  
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o botão ajustar limites 

CT006 - Deve ser possível visualizar o botão cartão virtual  
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o botão cartão virtual 

CT007 - Deve ser possível visualizar o histórico de compras feitas no cartão  
    Dado que o usuário está na página inicial do App 
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar o histórico de compras feitas no cartão 

CT008 - Deve ser possível visualizar uma lupa de pesquisa 
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar uma lupa de pesquisa 

CT009 - Deve ser possível visualizar um botão de interrogação 
    Dado que o usuário está na página inicial do App
    Quando clicar na aba "Cartão de Crédito"
    Então deve ser possível visualizar um botão de interrogação 