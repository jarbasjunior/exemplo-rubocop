describe 'Dropdown 2' do
  describe 'single' do
    before(:each) do
      visit '/apps/select2/single.html'
    end

    it 'Select actor by option' do
      find('.select2-selection--single').click
      find('.select2-results__option', text: 'Owen Wilson').click
    end

    it 'Search and click actor' do
      find('.select2-selection--single').click
      find('.select2-search__field').set 'Jim Carrey'
      find('.select2-results__option').click
    end
  end

  describe 'multiple' do
    before(:each) do
      visit '/apps/select2/multi.html'
    end

    it 'Select actors' do
      actors = ['Adanm Sandler', 'Jim Carrey', 'Kevin James']
      actors.each do |a|
        select(a)
      end
    end

    def select(actor)
      find('.select2-selection--multiple').click
      find('.select2-search__field').set actor
      find('.select2-results__option').click
    end

    it 'Search and click actor' do
      find('.select2-selection--multiple').click
      find('.select2-search__field').set 'Jim Carrey'
      find('.select2-results__option').click
    end
  end
end
