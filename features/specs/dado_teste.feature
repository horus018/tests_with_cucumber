#language: pt
  @dados_teste
  Funcionalidade: Subtração e soma

    @somar_bananas
    Cenario: Somar bananas
      Dado que eu tenho 10 bananas.
      Quando eu compro 5 bananas.
      Então eu vejo quantas bananas tem.

    @subtrair_bananas
    Cenario: Subtrair bananas.
      Dado que eu tenha 10 bananas.
      Quando eu como 5 bananas.
      Então eu vejo quantas bananas sobraram.