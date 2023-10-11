Quando('eu clico no botao de possíveis retornos') do
  visit '/'
  fill_in 'user_email', with: 'user@user.com'
  fill_in 'user_password', with: '123456'
  click_button 'Acessar'
  find('.bootbox-close-button.close').click

  @wait_until_page = WaitUntilPage.new
  @wait_until_page.load
  @wait_until_page.clicar_botao_possiveis_retornos
end

Então('a modal de possíveis retornos deve estar visível') do
  #com esse wait_undtil_<element>_visible o teste sempre vai dar certo,
  # pois ele espera a modal ficar visivel por tempo indeterminado
  @wait_until_page.wait_until_modal_possiveis_retornos_visible
  expect(@wait_until_page).to have_modal_possiveis_retornos
end
