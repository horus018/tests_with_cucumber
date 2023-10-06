#language: pt

  #isso em baixo com arroba é uma tag, vc pode chamar uma funcionalidade ou cenario especifico chamando somente a tag q vc quer
  # cucumber -t @nome_da_tag, se vc não quiser rodar cenarios especificos, coloque tag em todos os cenarios, e rode
  # cucumber -t '@tag1 or not@tag2', aqui ele vai rodar a @tag1 e não vai rodar a @tag2, tem q colocar as aspas mesmo SENÃO NÃO FUNCIONA
  @acessando_url
  Funcionalidade: Acessar a listagem de clientes, cadastrar um cliente e verificar se ele foi cadastrado
  - É sempre bom fazer a cobertura de testes em paginas
    de cadastro, principalmente nas que tem muitos campos
    como a listagem de clientes do site da santé

    Cenario: Cadastrar cliente no sistema
      Quando eu vou pra listagem de clientes e clico em novo cliente
      Entao depois de cadastrar um cliente ele deve aparecer na listagem de clientes