describe 'Iframes' do
  describe 'Good' do
    before(:each) do
      visit '/nice_iframe'
    end

    it 'Add to cart' do
      within_frame('burgerId') do
        product = find('.menu-item-info-box', text: 'CLASSIC BURGER')
        product.find('a').click
        expect(find('#cart')).to have_content 'R$ 18,50'
      end
    end
  end

  describe 'Bad' do
    before(:each) do
      visit '/bad_iframe'
    end

    it 'Cart empty' do
      script = '$(".box-iframe").attr("id", "temp_id");'
      page.execute_script(script)

      within_frame('temp_id') do # or -> within_frame(:xpath, '//iframe[@class="box-iframe"]')
        expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
      end
    end
  end
end
