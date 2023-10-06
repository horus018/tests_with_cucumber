Quando('eu vou pra listagem de clientes e clico em novo cliente') do
  find('#customers-top-icon').click
  find_link(href: '/customers/new').click
end

Entao('depois de cadastrar um cliente ele deve aparecer na listagem de clientes') do
  expect(page).to have_current_path('http://localhost:3000/customers/new', url: true)
  fill_in 'customer_name', with: 'Lusqueta'
  click_button 'Salvar'
  find('#customers-top-icon').click
  expect(page).to have_current_path('http://localhost:3000/customers', url: true)
  expect(page).to have_content 'Lusqueta'
end