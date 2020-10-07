describe 'Alert' do
  before(:each) do
    visit '/javascript_alerts'
  end

  it 'Accept' do
    click_button 'Alerta'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 2
    page.driver.browser.switch_to.alert.accept
  end

  it 'Yes confirm' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
  end

  it 'Dismiss' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'
    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
  end

  it 'Accept prompt' do
    accept_prompt(with: 'Jarbas Junior') do
      click_button 'Prompt'
    end
    expect(page).to have_content 'Olá, Jarbas Junior'
  end

  it 'Dismiss prompt' do
    dismiss_prompt(with: 'Jarbas Junior') do
      click_button 'Prompt'
    end
    expect(page).to have_content 'Olá, null'
  end

  after(:each) do
    sleep 0.5
  end
end
