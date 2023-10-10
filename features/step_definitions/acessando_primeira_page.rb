Quando('acesso a url da primeira page') do
  @home = PrimeiraPage.new
  @home.load
end

Entao('verifico se estou na página inicial') do
  expect(page).to have_current_path('http://localhost:3000/users/sign_in')
end