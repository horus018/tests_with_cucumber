Quando('eu acesso a url') do
  #o restante da url está no arquivo env.rb
  visit '/'
  fill_in "user_email", with: "desenvolvimento@teste.com"
  fill_in "user_password", with: "123456"
  click_button "Acessar"
end

Entao('eu verifico se estou na pagina correta') do
  expect(page).to have_current_path('https://app.santeodonto.io/')
end