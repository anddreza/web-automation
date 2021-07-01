Dado('que acesso a página de cadastro') do
    visit "http://rocklov-web:3000/signup"
    # sleep 10 #temporario
end
  
Quando('submeto o meu cadastro completo') do
    # pending # Write code here that turns the phrase above into concrete actions
    find("#fullName").set "Andreza Silva"
    find("#email").set "andreza@icloud.com"
    find("#password").set "jx7364"
    
    click_button "Cadastrar"
 end
  
Então('sou redirecionado para o Dashboard') do
    expect(page).to have_css ".dashboard"
end

Quando('submeto o meu cadastro sem o nome') do
    find("#email").set Faker::Internet.free_email
    find("#password").set "jx7364"
    
    click_button "Cadastrar"
    
end 

Então('vejo a mensagem de alerta: Oops. Informe seu nome completo!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe seu nome completo!"
end
# O que foi acrescentado na aula 10
Quando('submeto o meu cadastro sem o email') do
    find("#fullName").set "Andreza Silva"
    find("#password").set "jx7364"

    click_button "Cadastrar"
end
  
#Acrescentada
Quando('submeto o meu cadastro com email incorreto') do
    find("#fullName").set "Andreza Silva"
    find("#email").set "fernando*gmail.com"
    find("#password").set "jx7364"
    
    click_button "Cadastrar"
end

Então('vejo a mensagem de alerta: Oops. Informe um email válido!') do
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe um email válido!"
end

##sem senha 
Quando('submeto o meu cadastro sem a senha') do                               
    find("#fullName").set "Andreza Silva"
    find("#email").set Faker::Internet.free_email
    
    click_button "Cadastrar"
end                                                                           
                                                                                
Então('vejo a mensagem de alerta: Oops. Informe sua senha secreta!') do       
    alert = find(".alert-dark")
    expect(alert.text).to eql "Oops. Informe sua senha secreta!"
end                                                                           

