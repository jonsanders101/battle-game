

feature 'Testing' do
    scenario "can run the content of the page" do
      visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
