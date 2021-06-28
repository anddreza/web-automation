Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
    # sleep 10 #temporario
end
  
Quando('submeto o meu cadastro completo') do
    # pending # Write code here that turns the phrase above into concrete actions
    find("#fullName").set "Andreza Silva"
    find("#email").set "dedezasilva@live.com"
    find("#password").set "jx7364"
    
    click_button "Cadastrar"

    
 end
  
Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
end