*** Settings ***
Resource    ../../base.robot
Resource    ../pages/SaldoPage.robot

Test Setup       Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível visualizar Saldo disponível
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    Então deve ser possível visualizar o saldo da conta 

CT002 - Deve ser possível visualizar quanto dinheiro tem guardado na conta
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    Então deve ser possível visualizar quanto de dinheiro tem guardado na conta 

CT003 - Deve ser possível visualizar o rendimento total da conta 
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta" 
    Então deve ser possível visualizar o rendimento total da conta 

CT004 - Deve ser possível realizar um Depósito
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    E selecionar a opção "Depositar" 
    Então deve ser possível visualizar opções de depósitos disponíveis

CT005 - Deve ser possível realizar um pagamento
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    E selecionar a opção "Pagar" 
    Então deve ser possível visualizar opções de pagamento disponíveis 

CT006 - Deve ser possível realizar uma Transferência
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    E selecionar a opção "Tranferir" 
    Então deve ser possível inserir o valor da transferência

CT007 - Deve ser possível realizar um Empréstimo
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    E selecionar a opção "Empréstimos"
    Então deve ser possível visualizar as informações de empréstimos

CT008 - Deve ser possível realizar uma Cobrança
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    E selecionar a opção "Cobrar" 
    Então deve ser possível inserir o valor da cobrança

CT09 - Deve ser possível visualizar o histórico da conta 
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    Então deve ser possível visualizar o histórico de transações da conta 

CT10 - Deve ser possível visualizar um botão de dúvida 
    Dado que o cliente está na página inicial do Aplicativo
    Quando clicar na aba "Conta"
    Então deve ser possível visualizar um botão de dúvida









