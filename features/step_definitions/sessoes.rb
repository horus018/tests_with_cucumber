Quando('eu clico no elemento da sessao') do
  @page = PaginaQueMapeiaSessao.new
  @page.load

  @page.navbar.financial.click

  # aqui ele acessa o elemento da navbar sem precisar criar uma
  # referencia de novo pro objeto, ja q ele ta na sessao e o
  # elemento nao altera em cada pagina, eu nao preciso criar
  # uma referencia pra cada pagina, eu posso usar a mesma referencia
  # da sessao
end
