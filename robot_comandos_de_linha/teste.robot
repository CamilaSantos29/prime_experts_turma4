***Test Cases***
Cenario: entendendo como o robot funciona por linha de comando 
       [Tags]   chamando_robot
       Log To Console  \n Ola pessoal da Turma 4\n

Cenario: rodando mais de um teste
        Log To Console  \n Executei mais um teste galera !!!\n

Cenario: recebendo um valor pelo terminal
       [Tags]   recebendo_valor
       Log To Console  \n\Olá ${valor_do_terminal}!!!\n

       

