***Settings***
Library    SeleniumLibrary

***Variables***
${url}          http://automationpractice.com/index.php
&{Home}         campo_de_busca=css:#search_query_top
...             icone_de_busca=//input[@id="search_query_top"]/following-sibling::button[@type='submit']
&{produtos}     results=//span[@class='heading-counter'][contains(.,'0 results have been found.')]

***Keywords***
Acessar a página home do site Automation Practice
    [Documentation]     esta keyword é responsavel por abrir o site que iremos automatizar
    Go To   ${url}

Digitar o nome do produto "${itemNãoExistente}" no campo de pesquisa
    Wait Until Element Is Visible      ${Home.campo_de_busca}
    Input Text                         ${Home.campo_de_busca}   ${itemNãoExistente} 

Clicar no botão pesquisar
    Wait Until Element Is Visible       ${Home.icone_de_busca}
    Click Element                       ${Home.icone_de_busca}

Conferir mensagem "No results were found for your search "itemNãoExistente" 
    Wait Until Element Is Visible       ${produtos.results}

abrir navegador
    Open Browser  browser=chrome

fechar navegador
    Close Browser