*** Settings ***

Resource    ../../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${BOAS_VINDAS}           xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${CONTA_SALDO}           xpath=//android.view.View[@content-desc='Conta R$ 181,79']
${EMPRESTIMOS1}          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${FUNCIONA}              xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${NOVOEMPRESTIMO}        xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]

*** Keywords ***

Dado que o cliente está na página inicial
    Element should be visible    ${BOAS_VINDAS}

Quando selecionar o botão "Empréstimos"
    Swipe By Percent    50    50    -13    50
    Espera o elemento e faz o clique    ${EMPRESTIMOS1}

Então deve ser possível visualizar o valor de empréstimo disponível
    Wait Until Page Contains    O valor disponível no momento é de R$ 10.000,00

Então deve ser possível visualizar o botão "Entenda como funciona"
    Wait Until Page Contains        Entenda como funciona
    Element Should Be Enabled       ${FUNCIONA}
    
Então deve ser possível visualizar o botão "Novo Empréstimo"
    Wait Until Page Contains            NOVO EMPRÉSTIMO
    Element Should Be Disabled          ${NOVOEMPRESTIMO}

Então deve ser possível visualizar se existe algum empréstimo ativo 
    Wait Until Page Contains            Você não possui nenhum empréstimo ativo