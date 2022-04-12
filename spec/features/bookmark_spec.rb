feature 'Viewing bookmarks' do
  scenario 'view bookmark manager' do
    visit('/')
    expect(page).to have_content('This is your bookmark manager')
  end

  scenario 'view bookmark that have been hard coded' do
    visit('/bookmarks')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('http://www.destroyallsoftware.com')
    expect(page).to have_content('http://www.google.com')
  end
end
