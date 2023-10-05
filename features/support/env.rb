require 'capybara/cucumber'
require 'selenium-webdriver'
require 'webdrivers/chromedriver'

Capybara.configure do |config|
  #selenium_chrome #selenium_chrome_headless
  # o primeiro abre no chrome o segundo cli
  config.default_driver = :selenium_chrome

  #url do site em q os testes serao executados
  config.app_host = 'http://0.0.0.0:3000'

  #tempo maximo em segundos de espera para encontrar um elemento na tela, se nao encontrar ele da erro
  config.default_max_wait_time = 10
end