#language: pt
  @usando_contexto
  Funcionalidade: testar o uso de contextos
    quero testar o uso de contextos para
    aprender metodos novos da linguagem Gherkin

  Contexto:
    Dado que eu tenha 100000 reais na minha corretora

  Cenario: Investir dinheiro na bolsa
    Quando eu investir 1000 reais na bolsa
    Entao eu verifico quantos reais eu tenho a mais


  Cenario: Retirar dinheiro da bolsa
    Quando eu retirar 1000 reais da bolsa
    Entao eu verifico quantos reais eu tenho a menos