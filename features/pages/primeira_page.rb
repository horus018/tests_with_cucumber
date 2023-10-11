class PrimeiraPage < SitePrism::Page

  #facilitar e centralizar a busca de elementos na pagina usando o capybara
  set_url '/appointment_by_chair'

  element :username, '#user_email'
  element :password, '#user_password'

  def preencher
    # 'user@user.com'
    username.set 'user@user.com'
    password.set '123456'
  end

end