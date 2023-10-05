#language: pt

  #isso em baixo com arroba é uma tag, vc pode chamar uma funcionalidade ou cenario especifico chamando somente a tag q vc quer
  # cucumber -t @nome_da_tag, se vc não quiser rodar cenarios especificos, coloque tag em todos os cenarios, e rode
  # cucumber -t '@tag1 or not@tag2', aqui ele vai rodar a @tag1 e não vai rodar a @tag2, tem q colocar as aspas mesmo SENÃO NÃO FUNCIONA
  @acessando_url
  Funcionalidade: Acessar a primeira url

    Contexto:
      Dado que eu estou logado no sistema

    Cenario: Cadastrar cliente no sistema
      Quando eu vou pra listagem de clientes e clico em novo cliente
      Entao depois de cadastrar um cliente ele deve aparecer na listagem de clientes