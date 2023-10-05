Dado('que eu receba dividendos') do |datatable_que_ta_vindo_do_cucumber|
  #Pra pegar de uma datatable de linhas, transorma a tabela em um hash, e pega o valor da linha q tu quiser
  @dividendos = datatable_que_ta_vindo_do_cucumber.rows_hash['dividendos'].to_i

  # Pra cada linha uma variavel nova:
  # @acoes = datatable_que_ta_vindo_do_cucumber.rows_hash['acoes'].to_i
  # @fundos_imobiliarios = datatable_que_ta_vindo_do_cucumber.rows_hash['fundos_imobiliarios'].to_i

  # Veja como a tabela é impressa
  puts datatable_que_ta_vindo_do_cucumber
  puts datatable_que_ta_vindo_do_cucumber.rows_hash
  puts datatable_que_ta_vindo_do_cucumber.rows_hash['dividendos']
  puts datatable_que_ta_vindo_do_cucumber.rows_hash['dividendos'].to_i
end

Quando('eu receber {int} dividendos') do |dividendos|
  @dividendos += dividendos
end

Entao('eu verifico com quantos dividendos a mais eu fiquei') do
  expect(@dividendos).to eq 166
end

Dado('que eu venda dividendos') do |datatable_que_ta_vindo_do_cucumber|
  puts datatable_que_ta_vindo_do_cucumber
  puts datatable_que_ta_vindo_do_cucumber.hashes

  #Pra pegar de uma datatable de colunas, transorma a tabela em um array de hashes, e pega o valor da coluna q tu quiser
  datatable_que_ta_vindo_do_cucumber.hashes.each do |dividendo|
    puts dividendo
    puts dividendo['dividendos']

    @dividendos = dividendo['dividendos'].to_i
  end

end

Quando('eu vender {int} dividendos') do |dividendos|
  @dividendos = @dividendos - dividendos
end

Entao('eu verifico quantos dividendos a menos eu fiquei') do
  expect(@dividendos).to eq 6
end
