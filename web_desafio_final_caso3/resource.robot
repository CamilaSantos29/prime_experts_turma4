***Settings***
Library    SeleniumLibrary

***Variables***
${url}            http://automationpractice.com/index.php
${categoria}      dresses=(//a[@href='http://automationpractice.com/index.php?id_category=8&controller=category'][contains(.,'Dresses')])[2]
${subcategoria}   summer_dresses=(//a[@href='http://automationpractice.com/index.php?id_category=11&controller=category'][contains(.,'Summer Dresses')])[2]
${elemento}       women=//a[@title,'Women']

***Keywords***
Acessar a página home do site
    [Documentation]     esta keyword é responsavel por abrir o site que iremos automatizar
    Go To   ${url}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                   ${elemento.women}
    Sleep  4s

Clicar na categoria "Dresses"
    Wait Until Element Is Visible       ${categoria.dresses}
    Click Element                       ${categoria.dresses}

Clicar na sub categoria "Summer Dresses"
    Wait Until Element Is Visible       ${subcategoria.summer_dresses}
    Click Element                       ${subcategoria.summer_dresses}

 Conferir se os produtos da sub-categoria "Summer dresses" foram mostrados na página
    Wait Until Element Is Visible       ${summer_dresses}

abrir navegador
    Open Browser  browser=chrome

fechar navegador
    Close Browser