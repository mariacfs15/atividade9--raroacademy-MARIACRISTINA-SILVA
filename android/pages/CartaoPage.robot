*** Settings ***

Resource    ../../base.robot
Resource    ../utils/commons.robot

*** Variables ***

${BOAS_VINDAS}                  xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]

${CARTAOCREDITO}                xpath=//android.view.View[contains(@content-desc,'Cartão de Crédito')]

${PGFATURA}                     xpath=//android.view.View[@content-desc="Pagar fatura"]
${RESUMOFATURA}                 xpath=//android.view.View[@content-desc="Resumo de faturas"]
${LIMITES}                      xpath=//android.view.View[@content-desc="Ajustar limites"]
${CARVIRTUAL}                   xpath=//android.view.View[@content-desc="Cartão virtual"]
${LUPA}                         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${INTERROGACAO}                 xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]

*** Keywords ***

Dado que o usuário está na página inicial do App 
    Element should be visible    ${BOAS_VINDAS}

Quando clicar na aba "Cartão de Crédito"
    Swipe By Percent                    50    50    50    -0.01   
    Espera o elemento e faz o clique    ${CARTAOCREDITO}  

Então deve ser possível visualizar o valor da fatura atual
    Wait Until Page Contains    Fatura atual
    Wait Until Page Contains    R$ 780,72
    
Então deve ser possível visualizar o valor do Limite disponível 
    Wait Until Page Contains    Limite disponível R$ 806,78

Então deve ser possível visualizar o botão de pagamento de fatura 
     Wait Until Element Is Visible    ${PGFATURA} 

Então deve ser possível visualizar o botão resumo das faturas 
     Element should be visible    ${RESUMOFATURA} 

Então deve ser possível visualizar o botão ajustar limites 
     Element should be visible    ${LIMITES}  

Então deve ser possível visualizar o botão cartão virtual 
     Element should be visible    ${CARVIRTUAL} 

Então deve ser possível visualizar o histórico de compras feitas no cartão
     Swipe By Percent                    50    50    50    -0.01  
     Wait Until Page Contains            Pagamento recebido
     Wait Until Page Contains            Ontem
     Wait Until Page Contains            Supermercado
     Wait Until Page Contains            Transferência enviada
     Wait Until Page Contains            Pix
     Wait Until Page Contains            VOCÊ PAGOU R$ 50,00
     Wait Until Page Contains            R$ 30,00

Então deve ser possível visualizar uma lupa de pesquisa
    Element should be visible    ${LUPA}  

Então deve ser possível visualizar um botão de interrogação
    Element should be visible    ${INTERROGACAO} 