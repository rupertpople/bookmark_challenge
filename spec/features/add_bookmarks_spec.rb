feature 'Add bookmark' do
  scenario 'User submits URL and adds bookmark to bookmark manager' do
    visit('/bookmarks')
    fill_in 'Add bookmark', with: "http://facebook.com"
    click_on "Submit"

    click_on "View bookmarks"
    expect(page).to have_content("http://facebook.com")
  end
end