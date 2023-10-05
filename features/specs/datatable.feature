#language: pt
@datatable
Funcionalidade: Trabalhar com dadatables
  Em linhas e depois em colunas

  Cenario: Receber dividendos
    Dado que eu receba dividendos
      | dividendos | 152 |
    Quando eu receber 14 dividendos
    Entao eu verifico com quantos dividendos a mais eu fiquei

  Cenario: Vender dividendos
    Dado que eu venda dividendos
      | dividendos |
      | 150        |
      | 123        |
    Quando eu vender 144 dividendos
    Entao eu verifico quantos dividendos a menos eu fiquei

# Porque eu não coloco o mesmo texto na keyword 'Entao' pros dois 'Cenarios'???
# Exemplo: Entao eu verifico quantos dividendos eu tenho
# Porquê o cucumber reclama que eu estou repetindo o mesmo texto!!!