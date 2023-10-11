Quando('acesso a url da primeira page e faço login') do
  # @home = PrimeiraPage.new

  #não instancía mais a PrimeiraPage pois to usando
  # no page_helper o metodo primeira_page q instancía ela pra mim

  primeira_page.load
  primeira_page.preencher
end

Entao('verifico se estou na página inicial') do
  expect(page).to have_current_path('http://localhost:3000/users/sign_in')
end