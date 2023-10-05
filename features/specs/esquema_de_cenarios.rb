Dado('que eu tenho uma {int} de pepinos.') do |numero_de_pepinos|
  @pepinos = numero_de_pepinos
end

Quando('eu {int} pepinos.') do |numero_de_pepinos_que_eu_comi|
  @resultado = @pepinos - numero_de_pepinos_que_eu_comi
end

Então('eu fico {int} pepinos.') do |numero_de_pepinos_restante|
  expect(@resultado).to eq numero_de_pepinos_restante
end
