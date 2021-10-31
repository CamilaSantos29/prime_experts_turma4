***Variables***
&{pessoa}   nome= Camila  sobrenome= Oliveira  idade= 33 sexo=f  tel= 97812387

***Keywords***
imprimir pessoa
   Log To Console  \n\nImprimindo pessoa: ${pessoa}\n

criando meu dicionario
     &{criando_pessoa} Create Dictionary nome = Camila , sobrenome=Oliveira , idade=33, sexo=f, tel=97812387
     #Set Test Variable &{criando_pessoa}

imprimir este dicionario
     Log To Console  \n\nImprimindo pessoa: &{criando_pessoa}\n
