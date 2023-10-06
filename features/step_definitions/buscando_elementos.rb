#Todos os finders: https://www.rubydoc.info/gems/capybara/Capybara/Node/Finders
Quando('acesso a url de botoes') do
  visit '/'
end

Entao('verifico se encontrei os elementos') do
  #exemplos de finders do capybara
  find_all(:css, '.sante-card')
  find('#customers-top-icon')
  find_by_id('customers-top-icon')
  # find_button(class: 'button')
  first('.sante-card')
  find_link(href: '/customers')
end
