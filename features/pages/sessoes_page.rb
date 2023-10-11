class Sessao < SitePrism::Section
  element :appointments, 'a[href="/appointments"]'
  element :customers, 'a[href="/customers"]'
  element :financial, 'a[href="/financial_transactions"]'
  element :sign_out, 'a[href="/users/sign_out"]'
end

class PaginaQueMapeiaSessao < SitePrism::Page
  set_url '/'
  section :navbar, Sessao, '.navbar.topnavbar'
end

# a funcao da sessao é manter a referencia dos elementos
# que se repetem em todas as paginas, como a navbar e os elementos
# dentro dela em uma classe, assim eu uso a classe com a referencia
# dos elementos sem precisar criar uma referencia pra cada pagina