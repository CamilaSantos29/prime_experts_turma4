***Settings***
Resource   ./resource.robot

***Test Cases***
Cenario: criando email por argumentos embutidos
    Dado que eu recebo o nome "camila" sobrenome "oliveira" e a idade "33"
    Quando monto o meu email 
    Então imprimo o meu novo email
