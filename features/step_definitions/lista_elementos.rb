Quando('eu mapeio a tabela de customers') do
  visit '/'
  fill_in 'user_email', with: 'rubira820@gmail.com'
  fill_in 'user_password', with: '123456'
  click_button 'Acessar'
  find('.bootbox-close-button.close').click

  @lista_elementos = ListaElementosPage.new
  @lista_elementos.load
end

Entao('eu devo ver o mapeamento da tabela') do
  expect(@lista_elementos.header_lista.size).to eq 4

  # essa verificacao é útil pra quando vc cadastra um customer e
  # precisa verificar na datatable de customers se  tem um registro a mais
  expect(@lista_elementos.all_elements_from_datatable.size).to be >= 0

  # pegar de uma datatable com todos os registros
  # puts @lista_elementos.all_elements_from_datatable[13].text

  #os elementos da datatable vem como um array
  expect(@lista_elementos.all_elements_from_datatable[18].text).to eq '337.218.910-82'

  @lista_elementos.all_elements_from_datatable.each do |element|
    puts element.text
  end

end
