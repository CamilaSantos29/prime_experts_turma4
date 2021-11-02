***Settings***
Library    SeleniumLibrary

***Variables***
${url}            http://automationpractice.com/index.php
${categoria}      (//a[@title='Summer Dresses'])[1]
#${subcategoria}   summer_dresses=(//a[@href='http://automationpractice.com/index.php?id_category=11&controller=category'][contains(.,'Summer Dresses')])[2]
${elemento}       //a[@title='Women']
${summedresses}   //span[@class='cat-name'][contains(.,'Summer Dresses')]

***Keywords***
Acessar a página home do site
    [Documentation]     esta keyword é responsavel por abrir o site que iremos automatizar
    Go To   ${url}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                   ${elemento}
    Sleep  4s

Clicar na categoria "Summer Dresses"
    Wait Until Element Is Visible       ${categoria}
    Click Element                       ${categoria}

 Conferir se os produtos da sub-categoria "Summer dresses" foram mostrados na página
    Wait Until Element Is Visible       ${summedresses}

abrir navegador
    Open Browser  browser=chrome

fechar navegador
    Close Browser