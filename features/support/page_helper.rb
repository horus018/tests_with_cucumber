Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }
# aqui basicamente ele pega todas as pages da pasta pages e da um require em cada uma
# pra não precisar escrever:
# require 'pagina1'
# require 'pagina2'
# require 'pagina3'

#eu uso esse each q faz tudo pra mim



module c
  # Esse módulo faz o seguinte:
  # ele cria um metodo pra cada page, dentro ele retorna uma variavel
  # com uma instancia da page uma vez só, se a instancia ja existir
  # ele nao cria outra
  def primeira_page
    @primeira_page ||= PrimeiraPage.new
  end

end