describe 'Forms' do
  it 'Login Successfully' do
    visit '/login'
    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'jarvis!'
    click_button 'Login'

    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end

  it 'Unsuccessful login' do
    visit '/login'
    fill_in 'userId', with: 'hulk'
    fill_in 'passId', with: 'jarvis!'
    click_button 'Login'

    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
    expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
  end

  it 'Invalid password' do
    visit '/login'
    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'senha errada'
    click_button 'Login'

    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Senha é invalida!'
    expect(find('#flash')).to have_content 'Senha é invalida!'
  end
end
