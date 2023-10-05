# tests_with_cucumber

**English:**
Learning the power of Cucumber in parallel with RSpec, Capybara, and Selenium as a web driver in a Ruby project.

**Commands:**
- Run Cucumber without the informative table: `cucumber --publish`
- Run Cucumber with tags:
  - `cucumber -t @tag_name` -> run Cucumber in a specific tag
  - `cucumber -t '@tag1 or not @tag2'` -> run Cucumber in multiple tags except those with "not" before `@tag_name`

**Configuration File: `env.rb`**
This file contains settings about the URL of the site that will be tested, Selenium's default browser, and the maximum time Capybara will wait for each element to be visible on the screen.

**Hook File: `hooks.rb`**
This file contains functions that will be called before or after each Scenario, with or without specified tags.




**Portuguese:**
Aprendendo o poder do Cucumber em paralelo com o RSpec, Capybara e Selenium como driver web em um projeto Ruby.

**Comandos:**
- Executar o Cucumber sem tabela de informações: `cucumber --publish`
- Executar o Cucumber com tags:
  - `cucumber -t @nome_da_tag` -> executar o Cucumber em uma tag específica
  - `cucumber -t '@tag1 ou not @tag2'` -> executar o Cucumber em várias tags, exceto aquelas com "not" antes de `@nome_da_tag`

**Arquivo de Configuração: `env.rb`**
Este arquivo contém configurações sobre a URL do site que será testado, o navegador padrão do Selenium e o tempo máximo que o Capybara aguardará para que cada elemento seja visível na tela.

**Arquivo de Hooks: `hooks.rb`**
Este arquivo contém funções que serão chamadas antes ou depois de cada Cenario, com ou sem tags especificadas.
