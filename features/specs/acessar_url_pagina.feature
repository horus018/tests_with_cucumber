#language: pt

  #isso em baixo com arroba é uma tag, vc pode chamar uma funcionalidade ou cenario especifico chamando somente a tag q vc quer
  # cucumber -t @nome_da_tag, se vc não quiser rodar cenarios especificos, coloque tag em todos os cenarios, e rode
  # cucumber -t '@tag1 or not@tag2', aqui ele vai rodar a @tag1 e não vai rodar a @tag2, tem q colocar as aspas mesmo SENÃO NÃO FUNCIONA
  @acessando_url
  Funcionalidade: Acessar a primeira url

    Cenario: Acessar a url com sucesso.
      Quando eu acesso a url
      Entao eu verifico se estou na pagina correta
