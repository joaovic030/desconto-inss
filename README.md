## Aplicação - Desconto INSS
### Uma aplicação construida para:
- CRUD de Proponentes
- Calculo do Desconto do INSS dado uma tabela de exemplo.

### Fluxo
- Login usuario@padrao.com / usuario123
- Visualizar listagem de Proponentes, clicar em um e editar seu salário afim de ver o script em funcionamento.
- Criar Proponentes, junto com Endereço e Calculo de Desconto INSS.

### O que foi utilizado e informações gerais
#### Linguagem e ferramentas
- Ruby 2.6.3
- Rails 5.0
- Postgresql 12.1

#### Gems e outras bibliotecas utilizadas
- Devise
- RSpec
- Capybara
- Bootstrap
____
### O que eu preciso fazer para executar e testar essa aplicação
**Deve-se trocar as configuracoes dos bancos em database.yml para as suas** <br>
### *Teste*
**Inicializando em modo `test`** <br>
> **Deve-se seedar alguns dados necessários como usuarios e proponentes - comandos a seguir já segue com esta execução.**

`rails db:create db:migrate db:seed RAILS_ENV=test` <br>
`bundle exec rspec spec` <br>

### Dev
** Para rodar a aplicação local para avaliar funcionamento, basta rodar: <br>
`rails db:create db:migrate db:seed` e seguir o fluxo detalhado lá em cima.

### Pronto!
