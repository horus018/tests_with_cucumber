Dado('que eu estou logado no sistema') do
  visit '/'
  fill_in 'user_email', with: 'rubira820@gmail.com'
  fill_in 'user_password', with: '123456'
  click_button 'Acessar'
  find('.bootbox-close-button.close').click
end

Quando('eu vou pra listagem de clientes e clico em novo cliente') do
  find('#customers-top-icon').click
  visit('http://0.0.0.0:3000/customers/new')
end

Entao('depois de cadastrar um cliente ele deve aparecer na listagem de clientes') do
  fill_in 'customer_name', with: 'Fábio Giga'
  click_button 'Salvar'
  visit('http://0.0.0.0:3000/customers')
  expect(page).to have_content 'Fábio Giga'
end