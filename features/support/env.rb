require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

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
  config.app_host = 'http://localhost:3000'

  #tempo maximo em segundos de espera para encontrar um elemento na tela, se nao encontrar ele da erro
  config.default_max_wait_time = 10

end