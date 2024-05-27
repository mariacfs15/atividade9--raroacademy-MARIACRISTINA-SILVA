*** Settings ***

Resource    ../../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${BOAS_VINDAS}           xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${SALDO}                 xpath=//android.view.View[contains(@content-desc,'Conta')]
${DEPOSITARS01}          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${PAGARS01}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${TRANSFERIRS01}         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${EMPRESTIMOS01}         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${COBRARS01}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${DUVIDA}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]

*** Keywords ***

Dado que o cliente está na página inicial do Aplicativo
    Element should be visible    ${BOAS_VINDAS}   

Quando clicar na aba "Conta"
    Espera o elemento e faz o clique    ${SALDO}  

Então deve ser possível visualizar o saldo da conta 
    Wait Until Page Contains    Saldo disponível
    Wait Until Page Contains    R$ 181,79

Então deve ser possível visualizar quanto de dinheiro tem guardado na conta 
    Wait Until Page Contains    Dinheiro guardado
    Wait Until Page Contains    R$ 240,02

Então deve ser possível visualizar o rendimento total da conta 
    Wait Until Page Contains    Rendimento total da conta
    Wait Until Page Contains    +R$ 0,20 este mês

E selecionar a opção "Depositar" 
    Espera o elemento e faz o clique    ${DEPOSITARS01} 

Então deve ser possível visualizar opções de depósitos disponíveis
    Wait Until Page Contains    Como você quer depositar na sua conta do Nubank
    Wait Until Page Contains    Pix
    Wait Until Page Contains    Boleto
    Wait Until Page Contains    TED/DOC
    Wait Until Page Contains    Trazer seu salário

E selecionar a opção "Pagar" 
    Espera o elemento e faz o clique    ${PAGARS01}  

Então deve ser possível visualizar opções de pagamento disponíveis 
    Wait Until Page Contains    Pagar com Pix
    Wait Until Page Contains    Pagar fatura do cartão
    Wait Until Page Contains    Pagar um boleto

E selecionar a opção "Tranferir" 
    Espera o elemento e faz o clique    ${TRANSFERIRS01}

Então deve ser possível inserir o valor da transferência
    Wait Until Page Contains    Qual é o valor da transferência?

E selecionar a opção "Empréstimos"
    Espera o elemento e faz o clique    ${EMPRESTIMOS01} 

Então deve ser possível visualizar as informações de empréstimos
    Wait Until Page Contains    O valor disponível no momento é de R$ 10.000,00

E selecionar a opção "Cobrar" 
    Swipe By Percent                    50    50    -20    50
    Espera o elemento e faz o clique    ${COBRARS01}

Então deve ser possível inserir o valor da cobrança
    Wait Until Page Contains    Qual valor você quer receber?

Então deve ser possível visualizar o histórico de transações da conta 
    Wait Until Page Contains    Histórico

Então deve ser possível visualizar um botão de dúvida
    Element Should Be Visible    ${DUVIDA}