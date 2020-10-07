describe 'Checkbox' do
  before(:each) do
    visit '/checkboxes'
  end

  it 'Check an option' do
    puts find(:id, 'thor').checked?
    check('thor')
    puts find(:id, 'thor').checked?
  end

  it 'Uncheck an option' do
    puts find(:xpath, '//input[@name="antman"]').checked?
    uncheck('antman')
    puts find(:xpath, '//input[@name="antman"]').checked?
  end

  it 'Checking with set true' do
    puts find('input[value=iron-man]').checked?
    find('input[value=iron-man]').set true
    puts find('input[value=iron-man]').checked?
  end

  it 'Unchecking with set false' do
    puts find('input[value=guardians]').checked?
    find('input[value=guardians]').set false
    puts find('input[value=guardians]').checked?
  end

  after(:each) do
    sleep 0.5
  end
end
