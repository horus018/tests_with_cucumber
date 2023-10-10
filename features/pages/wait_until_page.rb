class WaitUntilPage < SitePrism::Page
  set_url '/appointment_by_chair'

  element :botao_possiveis_retornos, '#new_return'
  element :modal_possiveis_retornos, '.modal.bootstrap-dialog.modal-return.type-primary.fade.size-normal.in'

  def clicar_botao_possiveis_retornos
    wait_until_botao_possiveis_retornos_visible
    botao_possiveis_retornos.click
  end
end