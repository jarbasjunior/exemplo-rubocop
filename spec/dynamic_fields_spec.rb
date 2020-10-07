describe 'Dynamic fields' do
  before(:each) do
    visit '/login2'
  end

  it 'With birthday' do
    fill_in 'userId', with: 'stark'
    fill_in 'passId', with: 'jarvis!'

    login_form = find('#login')

    case login_form.text
    when /Dia/
      find('#day').set '29'
    when /Mês/
      find('#month').set '05'
    when /Ano/
      find('#year').set '1970'
    end
    click_button 'Login'

    expect(find('#flash').visible?).to be true
    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
  end
end
