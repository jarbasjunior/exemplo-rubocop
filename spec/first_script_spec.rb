describe 'My first script' do
  it 'Visit page' do
    # visit 'http://localhost:8085'
    # 100.times {
    #   find(:xpath, '//a[text()="Entrar com Conta Fractal"]').click
    #   find(:xpath, '//input[@name="login"]').set '17848'
    #   find(:xpath, '//input[@name="password"]').set 'adaptasenha123'
    #   find(:xpath, '//button[text()="Entrar"]').click
    #   sleep(0.5) while page.has_no_xpath?('//span[text()="FF"]')
    #   find(:xpath, '//span[text()="FF"]').hover
    #   find(:xpath, '//a[text()="Sair"]').click
    #   sleep(0.5) while page.has_no_xpath?('//a[text()="Entrar com Conta Fractal"]')
    # }
    visit ''
    expect(page.title).to eql 'Training Wheels Protocol'
  end
end
