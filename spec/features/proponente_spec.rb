require "rails_helper"

RSpec.feature "Proponente", type: :feature, js: true do
  before :each do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'e-mail',	with: 'usuario@padrao.com'
      fill_in 'password',	with: 'usuario123'
    end
    click_button 'login'
  end
  scenario "Checkando se pagina root é proponentes" do
    visit('/')
    expect(page).to have_css('.table')
    expect(page).to have_css('h1', text: 'Proponentes')
  end

  scenario "Acessando novo proponente page" do
    click_link 'Novo Proponente'
    using_wait_time 1 do
      expect(page).to have_css('#new_proponente')
      expect(page).to have_css('#proponente_endereco_attributes_logradouro')
    end
  end

  scenario "User cria um novo proponente com desconto inss" do
    visit "/"
    click_link "Novo Proponente"
    using_wait_time 2 do
      within('#new_proponente') do
        fill_in 'proponente_nome',	with: 'Sr. Teste'
        fill_in 'proponente_cpf',	with: '99301084082'
        fill_in 'proponente_data_de_nascimento',	with: Date.parse('1980-01-01')
        fill_in 'proponente_salario',	with: '1000'
        page.execute_script "$('#proponente_salario').trigger('focusout')"

        fill_in 'proponente_endereco_attributes_logradouro',	with: 'Rua X'
        fill_in 'proponente_endereco_attributes_numero',	with: '130'
        fill_in 'proponente_endereco_attributes_cidade',	with: 'São Paulo'
        fill_in 'proponente_endereco_attributes_estado',	with: 'São Paulo'
      end
      click_on 'Criar'
      expect(find('#proponente_desconto_inss').value).to_not be_empty
      expect(page).to have_text("Proponente was successfully created.")
    end
  end
end