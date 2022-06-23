*** Variables ***

#=========================AÇÃO COMUM EM TODOS OS TESTES
${SITE}                             https://www.digitalhouse.com/br
${NAVEGADOR}                        Chrome


#============================BOTÕES COMUNS EM TODOS OS TESTES
${BTN_VERMAIS}                      xpath=//div[@id='__next']/div/main/section/div/div[3]/div/a
${BTN_INSC}                         xpath=//*[@id="__next"]/div/main/section/div/div/div[1]/div/div[2]/div[1]/a
${BTN_CONFIRM}                      xpath=//*[@id="0"]/div/a
${BTN_QUERO_BOLSA}                  xpath=//*[@id="S6I9mVUafA1bbD5Bqc0xkFaqOMcdCRbf"]


#=====================CAMPOS A SEREM PREENCHIDOS
${CAMPO_NOME}                       xpath=//*[@id="name"]
${CAMPO_SOBRENOME}                  xpath=//*[@id="lastname"]
${CAMPO_EMAIL}                      xpath=//*[@id="email"]
${CAMPO_DDD}                        xpath=//*[@id="phonecode"]
${CAMPO_NUMERO_TEL}                 xpath=//*[@id="phone"]


#====================FORM BLK PWR DEV
${NOME_BLK}                         xpath=//*[@id="CzpXMe7EhpI6diDHrN8Oa1GHrhEPfIsA"]
${SOBRENOME_BLK}                    xpath=//*[@id="f02RR9bt0eNTrF0fJuC2azUMkD7TRX7M"]
${EMAIL_BLK}                        xpath=//*[@id="MUDBMzoKRZnrEBNp5XfGwgA0rdT7iCUw"]
${TELEFONE_BLK}                     xpath=//*[@id="IIqCGDME1hJVbZz5duh3TgaPEzSbSd6G"]
${ESTADO_BLK}                       xpath=//*[@id="ZGczPPDExPE6xndDZ05KhIgLkrMZSfbL"]
${COR_RACA}                         xpath=//*[@id="dZIt6ReeUqhJIp1n4Z5zAAJNmPqCvK1T"]
${ESTADO}                           São Paulo
${RACA}                             Amarelo



#==================INFORMAÇÕES A SEREM INSERIDAS
${NOME}                             Dylan
${SOBRENOME}                        Tokumoto
${EMAIL}                            dylan@tokumoto.com
${DDD}                              015
${TELEFONE}                         123456789





#======================BOTÕES DE CADA CURSO=========================
${BTN_DATANALYTICS}                 xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[3]/a/span
${BTN_SCIENCE}                      xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[4]/a/span
${BTN_MKD}                          xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[8]/a/span
${BTN_CTD}                          xpath=//*[@id="__next"]/div/main/section[2]/div/div/div[1]/a/span
${BTN_BOLSA}                        xpath=//*[@id="__next"]/div/main/div[1]/div/div/div[2]/div/a



#======================TEXTO DE CHAMADA=====================================
${TEXTO_DATAA}                      voltado para qualquer pessoa que deseja ampliar suas capacidades analíticas
${TEXTO_SCIENCE}                    profissionais de diversas áreas que desejam melhorar sua comunicação como engenheiros de Big Data
${TEXTO_MKD}                        voltado para as pessoas que querem ingressar na carreira de marketing digita
${TEXTO_CTD}                        Uma carreira pensada e desenhada pela Digital House, Mercado Livre e Globant
${TEXTO_BLK}                        Uma carreira em Programação para mudar o seu futuro



#====================DESCRIÇÕES==========================================
${DESC_DATAA}                       pessoas interessadas em business intelligence
${DESC_SCIENCE}                     adquirir habilidades práticas com as ferramentas específicas para fazer análises
${DESC_MKD}                         Empreendedores que desejam compreender os fundamentos da área e as principais estratégias de marketing digital
${DESC_CTD}                         Se você deseja mergulhar no mundo da programação e no desenvolvimento de novos produtos digitais
${DESC_BLK}                         Confira os requisitos para a bolsa de estudo




#===================VALORES A SEREM VALIDADOS==========================
${VALOR_DATAA}                      R$10.315
${VALOR_DATASCIENCE}                R$11.878
${VALOR_MKD}                        R$9.376
${VALOR_CTD}                        a partir de R$ 289,00 mensais
${VALOR_BLK}                        Valor das parcelas: a partir de R$88,00 mensais 



*** Keywords ***
#===============essas keywords repetem o tempo inteiro===========
Abrir o novo site da Digital House Brasil
   Open Browser                     ${SITE}   ${NAVEGADOR}
   Maximize Browser Window
   Set Selenium Speed               0.5

Clicar em aceitar cookies
   Sleep                            5
   Select frame                     xpath=/html/body/iframe[2]
   Click Element                    xpath=/html/body/div/div/div[1]/div[1]/div[2]/div[1]/div[2]
   Unselect frame                   

Ver outros cursos
   Wait Until Element Is Visible    ${BTN_VERMAIS}   30
   Click Element                    ${BTN_VERMAIS}

Clicar botão inscreva-se
   Click Element                    ${BTN_INSC}

Confirmar inscrição
   Wait Until Element Is Visible    ${BTN_CONFIRM}
   Click Element                    ${BTN_CONFIRM}





#================ DATA ANALYTICS
Selecionar curso Data Analytics
   Wait Until Element Is Visible    ${BTN_DATANALYTICS}
   Click Element                    ${BTN_DATANALYTICS}

Verificar texto de chamada
   Page should contain              ${TEXTO_DATAA}

Verificar descrição
   Page should contain              ${DESC_DATAA} 

Verificar Valor
   Page should contain              ${VALOR_DATAA}



#================== DATA SCIENCE

Selecionar curso Data Science
   Wait Until Element Is Visible    ${BTN_SCIENCE} 
   Click Element                    ${BTN_SCIENCE}

Verificar Texto data science
   Page should contain              ${TEXTO_SCIENCE}   

Verificar Desc data science
   Page should contain              ${DESC_SCIENCE}

Confirmar valor
   Page should contain              ${VALOR_DATASCIENCE}



#================== MARKETING DIGITAL
Selecionar curso Marketing Digital
   Wait Until Element Is Visible    ${BTN_MKD}
   Click Element                    ${BTN_MKD}

Verificar texto mkd
   Page should contain              ${TEXTO_MKD}

Verificar desc mkd
   Page should contain              ${DESC_MKD}

Verificar valor mkd
   Page should contain              ${VALOR_MKD}



#=============== CTD

Selecionar curso Certified Tech Developer
   Wait Until Element Is Visible   ${BTN_CTD}
   Click Element                   ${BTN_CTD}

Verificar texto ctd
   Page should contain             ${TEXTO_CTD}

Verificar desc ctd
   Page should contain             ${DESC_CTD}

Verificar valor ctd
   Page should contain             ${VALOR_CTD}

Preencher formulario
   Input Text                      ${CAMPO_NOME}          ${NOME}
   Input Text                      ${CAMPO_SOBRENOME}     ${SOBRENOME}
   Input Text                      ${CAMPO_EMAIL}         ${EMAIL}
   Input Text                      ${CAMPO_DDD}           ${DDD}
   Input Text                      ${CAMPO_NUMERO_TEL}    ${TELEFONE}


#===================BLK PWR DEV
Clicar em quero minha bolsa
   Wait Until Element Is Visible   ${BTN_BOLSA}
   Click Element                   ${BTN_BOLSA}

Verificar texto BLK PWR DEV
   Page should contain             ${TEXTO_BLK}

Verificar desc BLK PWR DEV
   Page should contain             ${DESC_BLK}

Verificar valor BLK PWR DEV
   Page should contain             ${VALOR_BLK}

Clicar em quero bolsa
   Wait Until Element Is Visible   ${BTN_QUERO_BOLSA}
   Click Element                   ${BTN_QUERO_BOLSA}

Preencher formulario bolsa
   Input Text                       ${NOME_BLK}          ${NOME}
   Input Text                       ${SOBRENOME_BLK}     ${SOBRENOME}
   Input Text                       ${EMAIL_BLK}         ${EMAIL}
   Input Text                       ${TELEFONE_BLK}      ${TELEFONE}
   Select From List By Value        ${ESTADO_BLK}        ${ESTADO}
   Select From List By Value        ${COR_RACA}          ${RACA}     