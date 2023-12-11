*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}                   http://www.amazon.com.br
${maisVendidos}          //a[contains(.,'Mais Vendidos')]
${titleMaisVendidos}    //span[contains(@class,'a-size-extra-large a-color-base _p13n-zg-banner-landing-page-header_style_zgLandingPageBannerText__3HlJo')]
${abrirMenus}           //i[contains(@class,'hm-icon nav-sprite')]
${façaLogin}            //a[@class='hmenu-item'][contains(.,'Faça seu login')]
${titleMenus}           //div[@class='hmenu-item hmenu-title '][contains(.,'destaques')]
${titleFazerLogin}      //h1[@class='a-spacing-small'][contains(.,'Fazer login')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

 Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${maisVendidos}


Entrar no menu Mais Vendidos
    Click Element    locator=${maisVendidos}

Verificar titulo da página "${Titulo}"
    Title Should Be    title=${Titulo}

Clicar no menu com três barras
    Click Element    locator=${abrirMenus}

Scrollar a tela até o final
    Wait Until Element Is Visible    locator=${titleMenus}
    Scroll Element Into View    locator=${façaLogin}

Clicar em Faça seu login
    Click Element    locator=${façaLogin}  

Validar direcionamento para a tela "${fazerLogin}"
    Element Should Be Visible    locator=//h1[@class='a-spacing-small'][contains(.,'${fazerLogin}')] 
    

