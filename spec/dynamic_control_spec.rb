describe 'Dynamic controll' do
  before(:each) do
    visit '/dynamic_controls'
  end

  it 'When to enable field' do
    field_avengers = page.has_field? 'movie'
    expect(field_avengers).to be false
    click_button 'Habilita'
    field_avengers = page.has_field? 'movie'
    expect(field_avengers).to be true
  end

  after(:each) do
    sleep 0.5
  end
end
