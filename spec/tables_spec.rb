describe 'Tables' do
  before(:each) do
    visit '/tables'
  end

  it 'Must show salary the Stark' do
    actors = all('table tbody tr')
    stark = actors.detect { |actor| actor.text.include?('Robert Downey Jr') }
    expect(stark.text).to include '1.000.000'
  end

  it 'Must show salary the Boseman' do
    vin = find('table tbody tr', text: '@chadwickboseman')
    expect(vin.text).to include '700.000'
  end

  it 'Must movie Velozes e Furiosos' do
    diesel = find('table tbody tr', text: '@vindiesel')
    movie = diesel.all('td')[2].text
    expect(movie).to eql 'Velozes e Furiosos'
  end

  it 'Must show inst the Evans' do
    evans = find('table tbody tr', text: '@teamcevans')
    name = evans.all('td')[0].text
    expect(name).to eql 'Chris Evans'
  end

  it 'Must select Chris Pratt for removal' do
    pratt = find('table tbody tr', text: '@prattprattpratt')
    pratt.find('a', text: 'delete').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    page.driver.browser.switch_to.alert.accept
  end

  it 'Must select Chris Pratt for edition' do
    pratt = find('table tbody tr', text: '@prattprattpratt')
    pratt.find('a', text: 'edit').click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    page.driver.browser.switch_to.alert.accept
  end
end
