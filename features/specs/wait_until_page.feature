#language: pt

  @wait_until
  Funcionalidade: Trabalhando com espera de elementos visíveis (ajax)

    Cenario: verificar existência da modal de possíveis retornos
      Quando eu clico no botao de possíveis retornos
      Então a modal de possíveis retornos deve estar visível
