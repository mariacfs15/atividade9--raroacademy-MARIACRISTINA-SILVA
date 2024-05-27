*** Settings ***

Resource    ../../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${BOAS_VINDAS}           xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${CONTA_SALDO}           xpath=//android.view.View[@content-desc='Conta R$ 181,79']
${DEPOSITO1}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]

*** Keywords ***

Dado que o usuário está na página inicial do Aplicativo
    Element should be visible    ${BOAS_VINDAS}

Quando selecionar o botão "Depositar"
    Swipe By Percent                        50    50    -2    50
    Espera o elemento e faz o clique        ${DEPOSITO1}

Então deve ser possível escolher a forma de depósito
    Wait Until Page Contains    Como você quer depositar na sua conta do Nubank

Então deve ser possível visualizar a opção "Pix"
    Wait Until Page Contains    Pix
    Wait Until Page Contains    Sem custo e cai na hora, mesmo de madrugada e fim de semana

Então deve ser possível visualizar a opção "Boleto"
    Wait Until Page Contains    Boleto
    Wait Until Page Contains    Sem custo e pode levar 3 dias úteis para o dinheiro cair.

Então deve ser possível visualizar a opção "TED/DOC"
    Wait Until Page Contains    TED/DOC
    Wait Until Page Contains    Pode ter custo e cai somente em horário comercial de dias úteis.

Então deve ser possível visualizar a opção "Trazer seu salário"
    Wait Until Page Contains    Trazer seu salário
    Wait Until Page Contains    Receba todo mês direto aqui na sua conta, sem custo.