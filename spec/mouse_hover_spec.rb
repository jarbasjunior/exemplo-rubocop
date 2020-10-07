describe 'Mouse hover' do
  before(:each) do
    visit '/hovers'
  end

  it 'When I over the Blade' do
    find('img[alt*=Blade]').hover
    expect(page).to have_content 'Nome: Blade'
  end

  it 'When I over the Pantera Negra' do
    find('img[alt^="Pantera"]').hover
    expect(page).to have_content 'Nome: Pantera Negra'
  end

  it 'When I over the Homem Aranha' do
    find('img[alt$="Aranha"]').hover
    expect(page).to have_content 'Nome: Homem Aranha'
  end

  after(:each) do
    sleep 0.5
  end
end
