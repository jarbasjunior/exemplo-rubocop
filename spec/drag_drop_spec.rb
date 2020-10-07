describe 'Drag drop' do
  before(:each) do
    visit '/drag_and_drop'
  end

  it 'Spiderman belong to the stark team' do
    field_stark_team = find('.team-stark .column')
    field_cap_team = find('.team-cap .column')
    spiderman = find('img[alt$=Aranha]')
    spiderman.drag_to field_stark_team
    expect(field_stark_team).to have_css 'img[alt$=Aranha]'
    expect(field_cap_team).not_to have_css 'img[alt$=Aranha]'
  end
end
