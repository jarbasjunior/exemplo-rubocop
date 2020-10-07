describe 'Keyboard' do
  before(:each) do
    visit '/key_presses'
  end

  it 'Send keys' do
    keys = %i[tab space escape enter alt control shift]
    keys.each do |t|
      find('#campo-id').send_keys t
      expect(page).to have_content 'You entered: ' + t.to_s.upcase
    end
  end

  it 'Send letters' do
    keys = %w[a s d f g h j k l]
    keys.each do |l|
      find('#campo-id').send_keys l
      expect(page).to have_content 'You entered: ' + l.to_s.upcase
    end
  end

  after(:each) do
    sleep 0.5
  end
end
