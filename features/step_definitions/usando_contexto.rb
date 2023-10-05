Dado('que eu tenha {int} reais na minha corretora') do |variavel_que_ta_vindo_da_palavra_chave_dado_dentro_do_contexto|
  #a ideia da palavra-chave Dado é que eu cria uma
  # variavel compartilhada por todos os steps aqui dentro
  @dinheiro_na_minha_corretora = variavel_que_ta_vindo_da_palavra_chave_dado_dentro_do_contexto
end

Quando('eu investir {int} reais na bolsa') do |reais|
  @dinheiro_na_minha_corretora = @dinheiro_na_minha_corretora - reais
end

Entao('eu verifico quantos reais eu tenho a mais') do
  expect(@dinheiro_na_minha_corretora).to eq 99000
end

Quando('eu retirar {int} reais da bolsa') do |reais|
  @dinheiro_na_minha_corretora = @dinheiro_na_minha_corretora + reais
end

Entao('eu verifico quantos reais eu tenho a menos') do
  expect(@dinheiro_na_minha_corretora).to eq 100000
  #AQUI VAI DAR ERRO, POIS QUANDO EU PASSO POR UM CENARIO NOVO, ELE SETA A VARIAVEL
  # @dinheiro_na_minha_corretora COMO 100000 NOVAMENTE, ENTAO O RESULTADO VAI SER
  # 101000 E NÃO 100000, POIS ELE TA PASSANDO PELO CONTEXTO E PEGA O VALOR 100000 DE NOVO
end

