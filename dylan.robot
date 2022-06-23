#ALUNO: DYLAN HEIDY SPINATO TOKUMOTO

*** Settings ***
Library                 SeleniumLibrary
Resource                ./dylan.resource
Test Setup              Abrir o novo site da Digital House Brasil
Test Teardown           Close Browser

*** Test Cases *** 
Validação das informações do curso de Data Analytics
   Clicar em aceitar cookies
   Ver outros cursos
   Selecionar curso Data Analytics
   Verificar texto de chamada
   Verificar descrição
   Clicar botão inscreva-se
   Confirmar inscrição
   Verificar Valor

Validação das informações do curso de Data Science
   Clicar em aceitar cookies
   Ver outros cursos
   Selecionar curso Data Science
   Verificar Texto data science
   Verificar Desc data science
   Clicar botão inscreva-se
   Confirmar inscrição
   Confirmar valor

Validação das informações do curso de Marketing Digital
   Clicar em aceitar cookies
   Ver outros cursos
   Selecionar curso Marketing Digital
   Verificar texto mkd
   Verificar desc mkd
   Clicar botão inscreva-se
   Confirmar inscrição
   Verificar valor mkd
    
Validação das informações do curso Certified Tech Developer
   Clicar em aceitar cookies
   Ver outros cursos
   Selecionar curso Certified Tech Developer
   Verificar texto ctd
   Verificar desc ctd
   Clicar botão inscreva-se
   Confirmar inscrição
   Verificar valor ctd 
   Preencher formulario

Validação das informações do Programa de Bolsas BLK PWR DEV
   Clicar em aceitar cookies
   Clicar em quero minha bolsa
   Verificar texto BLK PWR DEV
   Verificar desc BLK PWR DEV
   Verificar valor BLK PWR DEV
   Clicar em quero bolsa
   Preencher formulario bolsa