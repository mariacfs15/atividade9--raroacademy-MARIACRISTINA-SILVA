*** Settings ***

Resource    ../../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${BOAS_VINDAS}          xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]

${OCULTAR_SALDO}        xpath=//android.widget.ScrollView/android.widget.Button[1]
${INDICAR_AMIGOS}       xpath=//android.widget.ScrollView/android.widget.Button[3]
${CONTA_SALDO}          xpath=//android.view.View[@content-desc="Conta R$ 181,79"]

${PIX}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${PAGAMENTO}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${TRANSFERENCIA}        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${DEPOSITO}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]

${EMPRESTIMOS}          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${RECARGA}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${COBRAR}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${DOAÇÃO}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${ATALHOS}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

${MEUS_CARTOES}         xpath=//android.view.View[@content-desc="Meus cartões"]
${EMPRESTIMO_DISP}      xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${GUARDAR_DINHEIRO}     xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]
${EMPRESTIMO_INFO}      xpath=//android.view.View[@content-desc="Empréstimo Valor disponível de até R$ 10.000,00"]
${INVESTIMENTOS}        xpath=//android.view.View[@content-desc="Conhecer"]
${INDICACAO}            xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]

${INPUTVALOR}          xpath=//android.widget.EditText[@text="R$ 0,00"]
${INPUTCELULAR}        xpath=//android.widget.EditText


*** Keywords ***
Dado que o cliente está na página inicial do App
    Element should be visible    ${BOAS_VINDAS}
    
Quando clicar no ícone do olho
    Espera o elemento e faz o clique    ${OCULTAR_SALDO}
    
Então o saldo não estará mais visível na tela
    Wait Until Page Does Not Contain Element    ${CONTA_SALDO} 
    
Quando clicar no ícone da carta 
    Espera o elemento e faz o clique    ${INDICAR_AMIGOS}

Então deve ser possível visualizar a página de indicação de amigos
    Wait Until Element Is Visible    ${INDICACAO}   

Quando clicar em PIX 
    Espera o elemento e faz o clique    ${PIX} 

Então deve ser possível visualizar a Minha Área PIX 
    Wait Until Page Contains        Minha área Pix
    Wait Until Page Contains        Tudo o que você precisa para pagar, transferir ou cobrar

Quando clicar em PAGAR
    Espera o elemento e faz o clique    ${PAGAMENTO}   

Então deve ser possível visualizar as opções de pagamento disponíveis 
    Wait Until Page Contains    Pagar com Pix
    Wait Until Page Contains    Pagar fatura do cartão
    Wait Until Page Contains    Pagar um boleto

Quando clicar em TRANSFERIR 
    Espera o elemento e faz o clique    ${TRANSFERENCIA}   

Então deve ser possível inserir o valor da transferência a ser realizada 
    Wait Until Page Contains    Qual é o valor da transferência?
    Input Text    ${INPUTVALOR}     R$ 30,00

Quando clicar em DEPOSITAR 
    Espera o elemento e faz o clique    ${DEPOSITO}    

Então deve ser possível visualizar as opções de depósitos disponíveis
    Wait Until Page Contains    Como você quer depositar na sua conta do Nubank
    Wait Until Page Contains    Pix
    Wait Until Page Contains    Boleto
    Wait Until Page Contains    TED/DOC
    Wait Until Page Contains    Trazer seu salário

Quando clicar em EMPRÉSTIMOS 
    Swipe By Percent    50    50    -15    50
    Espera o elemento e faz o clique    ${EMPRESTIMOS}

Então deve ser possível visualizar as informações de empréstimos disponíveis
    Wait Until Page Contains        O valor disponível no momento é de R$ 10.000,00
    Wait Until Page Contains       Este valor pode mudar diariamente devido à nossa análise de crédito.

Quando clicar em RECARGA
    Swipe By Percent    50    50    -15    50
    Espera o elemento e faz o clique    ${RECARGA}

Então deve ser possível inserir o número de celular para realizar a Recarga
    Wait Until Page Contains    Qual número você quer recarregar?
    Input Text    ${INPUTCELULAR}    31994111769    

Quando clicar em COBRAR 
    Swipe By Percent    50    50    -15    50
    Espera o elemento e faz o clique    ${COBRAR} 

Então deve ser possível inserir o valor a ser cobrado
    Wait Until Page Contains    Qual valor você quer receber?
    Wait Until Page Contains    Não especificar um valor
    Input Text    ${INPUTVALOR}     R$ 30,00

Então deve ser possível fazer uma cobrança sem especificar o valor
    Wait Until Page Contains    Não especificar um valor

Quando rolar a tela para a direita
    Swipe By Percent    50    50    -15    50

Então deve ser possível visualizar as opções Doação e Encontrar Atalhos
    Wait Until Element Is Visible    ${DOAÇÃO}  
    Wait Until Element Is Visible    ${ATALHOS}  

Quando rolar a tela para cima
    Swipe By Percent    50    50    50    40

Então deve ser possível visualizar as os botões de Meus cartões, limite disponível para empréstimo e opções para guardar dinheiro
    Wait Until Element Is Visible    ${MEUS_CARTOES} 
    Wait Until Element Is Visible    ${EMPRESTIMO_DISP} 
    Wait Until Element Is Visible    ${GUARDAR_DINHEIRO} 


Então deve ser possível visualizar a aba Empréstimo
     Wait Until Page Contains    Empréstimo
     Wait Until Page Contains    Valor disponível de até 

Quando subir a tela
     Swipe By Percent    50    50    50    20

Quando subir a tela até a aba Investimento
    Swipe By Percent    50    50    50    -10

E clicar em "Conhecer"
    Espera o elemento e faz o clique    ${INVESTIMENTOS}

Então deve ser possível visualizar as informações de investimentos
    Wait Until Page Contains    Invista sem taxas e burocracia

Então deve ser possível visualizar a aba Seguro de Vida 
    Wait Until Page Contains   Seguro de vida
    Wait Until Page Contains   Conheça Nubank Vida: um seguro simples e que cabe no bolso.
Quando chegar ao final da tela
    Swipe By Percent    50    50    50    -40

Então deve ser possível visualizar a aba para realizar pagamentos via WhatsApp 
    Wait Until Page Contains   Descubra mais
    Wait Until Page Contains   WhatsApp
    Wait Until Page Contains   Pagamentos seguros, rápidos e sem tarifa.

Quando chegar a aba "Descubra mais"
    Swipe By Percent    50    50    30    -40

Então deve ser possível visualizar a indicação de amigos
    Wait Until Page Contains   Descubra mais
    Wait Until Page Contains   Indique seus amigos
    Wait Until Page Contains   Mostre aos seus amigos como é fácil ter uma vida sem burocracia

Então deve ser possível visualizar a aba Cartão de Crédito
     Wait Until Page Contains   Cartão de Crédito