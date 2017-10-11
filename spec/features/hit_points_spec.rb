feature "Entering players" do
  scenario 'Can enter the name of the player' do
    visit('/')
    fill_in :player_1, with: 'Rory'
    fill_in :player_2, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content "Chris: 20HP"
  end
end
