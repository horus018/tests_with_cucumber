require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

# depois de pesquisar finalmente entendi como caralhos essa variavel ENV pega
# os valores de producao ou homologacao do yml. Essa ENV é um objeto em ruby
# que fornece acesso a variaveis do sistema operacional

# Exemplo: rode no terminal -
# export VARIAVEL_TESTE='eita nois'
# isso cria uma variavel no sistema operacional, de alguma forma o yml cria algumas
# variaveis internas que o ENV também tem acesso

# depois imprima com o ruby:
# puts ENV['VARIAVEL_TESTE']
# vai imprimir 'eita nois', MUITO TESÃO ISSO!!!

AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(PageObjects)

Capybara.configure do |config|

  Capybara.register_driver :selenium do |app|
    # Configurar o caminho para o executável do Firefox
    options = Selenium::WebDriver::Firefox::Options.new(binary: '/home/lucas/Downloads/firefox/firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox, options: options)
  end

  #selenium (firefox) selenium_chrome (chrome) #selenium_chrome_headless (cli)
  # o primeiro abre no chrome o segundo cli
  config.default_driver = :selenium

  #url do site em q os testes serao executados
  config.app_host = CONFIG['url_padrao']

  #tempo maximo em segundos de espera para encontrar um elemento na tela, se nao encontrar ele da erro
  config.default_max_wait_time = 10

end