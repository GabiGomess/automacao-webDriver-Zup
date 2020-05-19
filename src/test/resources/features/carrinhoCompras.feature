Feature: Adicionar produtos a carrinho de Compras
##############################################################
  @test
  Scenario: Adicionar produtos a carrinho de compras
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When digito busca por conteudo 'Cyberpunk 2077'
    And valido retorno de página contendo resultados de busca
    And escolho produto em lista
    Then será redirecionado para página do produto
    And clico em botão para adicionar produto a carrinho de compras
    And será redirecionado para página 'Meu Carrinho'

#################################################################
  @test
  Scenario: Adicionar produtos sem estoque a carrinho de compras
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When digito busca por conteudo 'Game Call Of Duty Modern Warfare - Xbox One'
    And valido retorno de página contendo resultados de busca
    And escolho produto em lista
    Then será redirecionado para página do produto
    And valido produto sem estoque
    And preencho campo 'nome' em formulário de cadastro
    And preencho campo 'e-mail' em formulário de cadastro
    And aciono botão 'Enviar'
    And valido mensagem para cadastro efetuado com sucesso

##############################################################
  @test
  Scenario: Validar produtos em carrinho de compras
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When digito busca por conteudo 'Cyberpunk 2077'
    And valido retorno de página contendo resultados de busca
    And escolho produto em lista
    Then será redirecionado para página do produto
    And clico em botão para adicionar produto a carrinho de compras
    And será redirecionado para página 'Meu Carrinho'
    And valido produto presente em carrinho de compras

##############################################################
  @test
  Scenario: Adicionar produtos a carrinho de compras utilizando menu de navagação
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When aciono menu em homepage
    And seleciono opção de menu 'Games e PC Gamer'
    And seleciono opção de menu 'Games'
    And seleciono opção de menu 'Lançamentos'
    And selecionar produto 'Game: Borderlands 3 - XBOX ONE' em lista
    Then será redirecionado para página do produto
    And clico em botão para adicionar produto a carrinho de compras
    And será redirecionado para página 'Meu Carrinho'
    And valido produto presente em carrinho de compras

##################################################################