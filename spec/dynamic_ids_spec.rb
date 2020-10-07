describe 'Dynamic id' do
  before(:each) do
    visit '/access'
  end

  it 'Signup' do
    find('input[id$=UsernameInput]').set 'New User'
    find('input[id^=PasswordInput]').set '123'
    find('a[id*=GetStartedButton]').click
    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
  end
end
