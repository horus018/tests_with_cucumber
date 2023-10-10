Quando('eu fizer login no sistema') do
  # Deixar navegador em tela cheia
  # page.windows[0].maximize
  visit '/'
  fill_in 'user_email', with: 'rubira820@gmail.com'
  fill_in 'user_password', with: '123456'
  click_button 'Acessar'
  find('.bootbox-close-button.close').click
end

Quando('eu clico no icone da agenda na topbar') do
  find('#appointments-top-icon').click
end

Então('verifico se estou na tela de agendamentos') do
  expect(page).to have_current_path('http://localhost:3000/appointment_by_chair', url: true)
end

Quando('eu criar um encaixe') do
  visit('/appointment_by_chair')
  find('.enjoyhint_close_btn').click
  click_on('bt-docking')

  within('.modal-dialog') do
    select 'Lucas Alves Rubira', from: 'docking_professional_id'
    fill_in 'docking_customer_name', with: 'lu'
  end

  find('.external-ul-autocomplete-appointments li:first-child').click
  click_on('bt-save-docking')

end

Então('verifico se ele existe na tela de agendamentos') do
  expect(page).to have_content 'Lusqueta'
end

Quando('eu arrastar e soltar um encaixe na agenda') do
  visit('/appointment_by_chair')
  find('.enjoyhint_close_btn').click

  whitin('#appointment_by_chair_calendar') do
    @primeiro_elemento = find('.list-group-item.external-event-item.ui-draggable.ui-draggable-handle:first-child')
    @segundo_elemento = find('td[data-time="08:00:00"]:first-child')
    @primeiro_elemento.drag_to(@segundo_elemento)
    sleep 10
  end

end

Então('verifico se ele está na posição correta dentro da agenda') do
  
end
