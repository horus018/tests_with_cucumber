#language: pt

  @drag_and_drop
  Funcionalidade: Arrastar e soltar um encaixe dentro da agenda

    Contexto: Fazer login antes dos testes abaixo
      Quando eu fizer login no sistema

    Cenario: Visitar a tela de agendamentos
      Quando eu clico no icone da agenda na topbar
      Então verifico se estou na tela de agendamentos

    Cenario: Criar um encaixe
      Quando eu criar um encaixe
      Então verifico se ele existe na tela de agendamentos

    Cenario: Arrastar e soltar um encaixe na agenda
      Quando eu arrastar e soltar um encaixe na agenda
      Então verifico se ele está na posição correta dentro da agenda