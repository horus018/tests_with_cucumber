# tests_with_cucumber

##English:
Learning the power of the cucumber in parallel with RSpec, Capybara and Selenium as web driver in a ruby project

Commands:

run cucumber without table of info: cucumber --publish
run cucumber with tags:
  - cucumber -t @tag_name -> run cucumber in a specific tag
  - cucumber -t '@tag1 or not@tag2' -> run cucumber in multiple tags except those who has the not before @tag_name

Config file: env.rb
This file contains settings about the url of the site that will be tested, Selenium's default browser and the maximum time in which capybara will wait for each element be visible on the screen

Hook file: hooks.rb
This file contains functions that will be called before or after each test, with or without specified tags



##Portuguese:
Aprendendo o poder do Cucumber em paralelo com o RSpec, Capybara e Selenium como web driver em um projeto Ruby

Comandos:

Executar o cucumber sem tabela de informações: cucumber --publish
Executar o cucumber com tags:
   - cucumber -t @nome_da_tag -> executar o Cucumber em uma tag específica
   - cucumber -t '@tag1 ou not@tag2' -> executar o Cucumber em várias tags, exceto aquelas que têm "not" antes de @nome_da_tag

Arquivo de configuração: env.rb
Nesse arquivo contem configurações sobre url do site que será testado, navegador padrão do selenium e tempo maximo em que o capybara vai esperar pra cada elemento estar visivel na tela

Hook file: hooks.rb
Nesse arquivo contém funcões que serão chamadas antes ou depois de cada teste, com ou sem tags especificadas
