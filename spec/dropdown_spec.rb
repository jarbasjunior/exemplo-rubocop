describe 'Dropdown' do
  it 'Simple specific item' do
    visit '/dropdown'
    select('Natasha Romanoff', from: 'dropdown')
  end

  it 'Specific item with find' do
    visit '/dropdown'
    element = find('.avenger-list')
    element.find('option', text: 'Tony Stark').select_option
  end

  it 'Any item with find' do
    visit '/dropdown'
    element = find('.avenger-list')
    element.all('option').sample.select_option
    # puts element.all('option').sample.select_option.text
  end
end
