describe 'Radiobutton' do
  before(:each) do
    visit '/radios'
  end

  it 'Select by id' do
    choose('cap')
  end

  it 'Select by find and css selector' do
    find('input[value=guardians]').click
  end

  after(:each) do
    sleep 0.5
  end
end
