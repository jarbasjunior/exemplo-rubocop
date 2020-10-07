describe 'Dynamic fields' do
  before(:each) do
    visit '/access'
  end

  it 'Login successfully' do
    # or
    # login_form = find('#login')
    # login_form.find('input[name=username]').set 'stark'
    # login_form.find('input[name=password]').set 'jarvis!'

    # or
    within('#login') do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
    end

    click_button 'Entrar'

    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it 'Signup successfully' do
    # or
    # login_form = find('#login')
    # login_form.find('input[name=username]').set 'stark'
    # login_form.find('input[name=password]').set 'jarvis!'

    # or
    within('#signup') do
      find('input[name=username]').set 'New User'
      find('input[name=password]').set '1234'
    end

    click_link 'Criar Conta'

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
  end
end
