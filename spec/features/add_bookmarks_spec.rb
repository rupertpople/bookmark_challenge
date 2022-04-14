feature 'Add bookmark' do
  scenario 'User submits URL and adds bookmark to bookmark manager' do
    visit('/bookmarks/new')
    fill_in 'View bookmarks', with: "http://facebook.com"
    click_on "Submit"
    click_on "View bookmarks"
    expect(page).to have_content("http://facebook.com")
  end
end