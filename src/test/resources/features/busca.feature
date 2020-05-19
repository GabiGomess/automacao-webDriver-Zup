Feature: Busca de produtos
#########################################################################
  @test
  Scenario: Busca produtos utilizando campo 'conteudo'
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When digito busca por conteudo 'Cyberpunk 2077'
    Then valido retorno de página contendo resultados de busca

#########################################################################
  @test
  Scenario: Escolha de produto em lista retorno de pesquisa
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When digito busca por conteudo 'Cyberpunk 2077'
    And valido retorno de página contendo resultados de busca
    And escolho produto em lista
    Then será redirecionado para página do produto

#########################################################################
  Scenario: Buscar por produtos utilizando menu de navegação
    Given acesso uma nova página utilizando o navegador Google Chrome
    And acesso portal https://www.submarino.com.br/
    When aciono menu em homepage
    And seleciono opção de menu 'Games e PC Gamer'
    And seleciono opção de menu 'Games'
    And seleciono opção de menu 'Lançamentos'
    And selecionar produto 'Call of Duty Modern Warfare - Xbox One' em lista
    Then será redirecionado para página do produto