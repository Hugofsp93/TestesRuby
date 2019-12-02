require "rails_helper"

RSpec.feature "Teste funcional automatizado da tela de login" do
  it "Teste de login realizado com sucesso" do
    visit "/"
    fill_in 'Email', with: 'hugo@unibratec.com'
    fill_in 'Senha', with: 'lklklklk'
    click_button 'Log in'
    expect(page).to have_no_content('Para continuar, efetue login ou registre-se.')
  end

  it "Teste com senha incorreta" do
    visit "/"
    fill_in 'Email', with: 'hugo@unibratec.com'
    fill_in 'Senha', with: 'errada'
    click_button 'Log in'
    expect(page).to have_content('E-mail ou senha inválidos.')
  end
end