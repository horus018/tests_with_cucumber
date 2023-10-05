#language: pt

#Só pode uma funcionalidade por feature
#Pode ter várias regras e vários cenarios

Funcionalidade: Fazer uma soma
  -Eu como usuário
  -Quero fazer uma soma

  Cenario: Fazer uma soma.
    Quando eu somo 2 + 2
    Então o resultado tem que ser 4