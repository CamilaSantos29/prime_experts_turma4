***Settings***
Resource   ./resource.robot
Suite Setup       estou executando antes de tudo e todos
Suite Teardown    estou executando depois de tudo e todos
Test Setup        estou executando antes do teste
Test Teardown     estou executando depois do teste


***Test Cases***
Cenario: brincando com setups e teardowns
    [Setup]     estou executando antes do teste2
    Log To Console   \n\nExecutando meu cenario !!!\nExecutando
    [Teardown]    estou executando depois do teste2
  