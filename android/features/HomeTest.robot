*** Settings ***
Resource    ../../base.robot
Resource    ../pages/HomePage.robot

Test Setup       Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível ocultar Saldo disponível
    Dado que o cliente está na página inicial do App
    Quando clicar no ícone do olho
    Então o saldo não estará mais visível na tela

CT002 - Deve ser possível indicar amigos para utilizarem o banco
    Dado que o cliente está na página inicial do App
    Quando clicar no ícone da carta
    Então deve ser possível visualizar a página de indicação de amigos

CT003 - Deve ser possível realizar um pix 
    Dado que o cliente está na página inicial do App
    Quando clicar em PIX 
    Então deve ser possível visualizar a Minha Área PIX 

CT004 - Deve ser possível realizar um pagamento
    Dado que o cliente está na página inicial do App
    Quando clicar em PAGAR 
    Então deve ser possível visualizar as opções de pagamento disponíveis 

CT005 - Deve ser possível realizar uma Transferência
    Dado que o cliente está na página inicial do App
    Quando clicar em TRANSFERIR 
    Então deve ser possível inserir o valor da transferência a ser realizada 

CT006 - Deve ser possível realizar um Depósito
    Dado que o cliente está na página inicial do App
    Quando clicar em DEPOSITAR 
    Então deve ser possível visualizar as opções de depósitos disponíveis

CT007 - Deve ser possível realizar um Empréstimo
    Dado que o cliente está na página inicial do App
    Quando clicar em EMPRÉSTIMOS 
    Então deve ser possível visualizar as informações de empréstimos disponíveis

CT008 - Deve ser possível realizar uma Recarga
    Dado que o cliente está na página inicial do App
    Quando clicar em RECARGA  
    Então deve ser possível inserir o número de celular para realizar a Recarga

CT009 - Deve ser possível realizar uma Cobrança
    Dado que o cliente está na página inicial do App
    Quando clicar em COBRAR 
    Então deve ser possível inserir o valor a ser cobrado

CT010 - Deve ser possível visualizar atalhos de Doação e Encontrar Atalhos
    Dado que o cliente está na página inicial do App
    Quando rolar a tela para a direita
    Então deve ser possível visualizar as opções Doação e Encontrar Atalhos

CT011 - Deve ser possível visualizar os botões os botões de Meus cartões, limite disponível para empréstimo e opções para guardar dinheiro
    Dado que o cliente está na página inicial do App
    Quando rolar a tela para cima 
    Então deve ser possível visualizar as os botões de Meus cartões, limite disponível para empréstimo e opções para guardar dinheiro

CT012 - Deve ser possível visualizar a aba Cartão de Crédito 
    Dado que o cliente está na página inicial do App
    Quando subir a tela
    Então deve ser possível visualizar a aba Cartão de Crédito

CT013 - Deve ser possível visualizar a aba Empréstimo 
    Dado que o cliente está na página inicial do App
    Quando subir a tela
    Então deve ser possível visualizar a aba Empréstimo

CT014 - Deve ser possível visualizar as informações de Investimento 
    Dado que o cliente está na página inicial do App
    Quando subir a tela até a aba Investimento
    E clicar em "Conhecer"
    Então deve ser possível visualizar as informações de investimentos

CT015 - Deve ser possível visualizar a aba Seguro de Vida 
    Dado que o cliente está na página inicial do App
    Quando chegar ao final da tela 
    Então deve ser possível visualizar a aba Seguro de Vida 

CT016 - Deve ser possível visualizar a opção pagamentos por WhatsApp 
    Dado que o cliente está na página inicial do App
    Quando chegar ao final da tela
    Então deve ser possível visualizar a aba para realizar pagamentos via WhatsApp 

CT017 - Deve ser possível visualizar a opção Indique seus amigos  
    Dado que o cliente está na página inicial do App
    Quando chegar a aba "Descubra mais"
    Então deve ser possível visualizar a indicação de amigos 



