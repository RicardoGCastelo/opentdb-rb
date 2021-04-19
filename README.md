# opentdb-rb
Repositorio do Teste de Automação para QA com Cucumber, Capybara e Ruby

## como executar o projeto 

* Importante ter o Ruby instalado (versão 2.5 ou superior)

### Instalar o Bundler
'
gem install bundler
'
### Instalar as dependências do Ruby (projeto)
'
bubdle install
'

### Executar localmente
'
Execução do primeiro cenário: bundle exec cucumber -t @questao1
Execução do segundo e terceiro cenários: bundle exec cucumber -t @questao2_3
Execução de todos os cenarios: bundle exec cucumber features/busca_questoes.feature
'
