Quando('acesso a url da primeira page e faço login') do
  @home = PrimeiraPage.new
  @home.load
  @home.preencher
end

Entao('verifico se estou na página inicial') do
  expect(page).to have_current_path('http://localhost:3000/users/sign_in')
end