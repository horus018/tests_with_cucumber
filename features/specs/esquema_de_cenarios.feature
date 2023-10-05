#language: pt
Funcionalidade: Verificação de dados em tabelas

  Esquema do Cenario: Comer
    Dado que eu tenho uma <QUANTIDADE> de pepinos.
    Quando eu <COMO> pepinos.
    Então eu fico <SOBRADO> pepinos.

    Exemplos:

      | QUANTIDADE | COMO | SOBRADO |
      | 12         | 5    | 7       |
      | 20         | 5    | 15      |

#Dá pra usar tabelas pré feitas pro cucumber enviar pro rspec os valores dela

#Essa linguagem descritiva é chamada de Gherkin, que é uma linguagem descritiva
#que o cucumber usa pra escrever os cenários de teste para que alguém que não programe entenda