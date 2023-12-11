*** Settings ***
Documentation    Esta suite testa o site da amazon
Resource         testesAmazonResources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de teste 1 - Acesso ao menu Mais Vendidos
    [Documentation]    Esse teste verifica o menu Mais Vendidos
    ...                dentro do site da Amazon.com.br
    [Tags]             menus
    Acessar a home page do site Amazon.com.br
    Entrar no menu Mais Vendidos
    Verificar titulo da página "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"

Caso de teste 2 - Acesso ao menu Faça seu login
    [Documentation]    Esse teste acessa a tela para realizar o login
    ...                através do menu na parte superior esquerda da tela
    [Tags]             login
    Acessar a home page do site Amazon.com.br
    Clicar no menu com três barras
    Scrollar a tela até o final
    Clicar em Faça seu login
    Validar direcionamento para a tela "Fazer login"