feature 'Add bookmark' do
  scenario 'User submits URL and adds bookmark to bookmark manager' do
    visit('/bookmarks')
    fill_in 'bookmark', with: "http://facebook.com"
    fill_in 'title', with: 'Facebook'
    click_on "Submit"
    click_on "View bookmarks"
    expect(page).to have_link("Facebook", :href => "http://facebook.com")
  end
end