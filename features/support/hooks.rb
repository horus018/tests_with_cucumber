#Esse arquivo é usado pra executar algo antes ou depois de cada cenário do projeto todo

#ANTES DE DEPOIS DE CADA CENARIO DO PROJETO TODO
#-------------------------------------------------------------------------------------------

#o before é executado antes de cada cenário do projeto todo
Before do
  visit '/'
  fill_in 'user_email', with: 'user@user.com'
  fill_in 'user_password', with: '123456'
  click_button 'Acessar'
  find('.bootbox-close-button.close').click

  @variavel_global = 3
  #só usar essa variavel em qualquer cenario do projeto sem instanciar ela q ele puxa daqui
end

#o after é executado antes de cada cenário do projeto todo
After do
  puts 'estou sendo chamado depois de cada cenário'
  @variavel_global = 3
  #só usar essa variavel em qualquer cenario do projeto sem instanciar ela q ele puxa daqui
end



#ANTES DE DEPOIS DE CADA CENARIO DE TAGS ESPECIFICAS
#-------------------------------------------------------------------------------------------

#rodar antes de cada cenario com a tag @tag_tal
Before '@tag_tal' do
  puts 'estou sendo chamado antes de cada cenário com a tag @tag_tal'
end

#rodar depois de cada cenario com a tag @tag_tal
After '@tag_tal' do
  puts 'estou sendo chamado depois de cada cenário com a tag @tag_tal'
end