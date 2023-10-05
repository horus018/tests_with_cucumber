Dado('que eu tenho {int} bananas.') do |valor_que_ta_vindo_do_cucumber_na_secao_dado|
  @bananas = valor_que_ta_vindo_do_cucumber_na_secao_dado
end

Quando('eu compro {int} bananas.') do |valor_que_ta_vindo_do_cucumber_no_dado_pra_somar|
  @soma = @bananas + valor_que_ta_vindo_do_cucumber_no_dado_pra_somar
end

Então('eu vejo quantas bananas tem.') do
  expect(@soma).to eq 15
end

Dado('que eu tenha {int} bananas.') do |valor_que_ta_vindo_do_cucumber_na_secao_dado|
  @bananas = valor_que_ta_vindo_do_cucumber_na_secao_dado
end

Quando('eu como {int} bananas.') do |valor_que_ta_vindo_do_cucumber_pra_subtrair|
  @subtarcao = @bananas - valor_que_ta_vindo_do_cucumber_pra_subtrair
end

Então('eu vejo quantas bananas sobraram.') do
  expect(@subtarcao).to eq 5
end