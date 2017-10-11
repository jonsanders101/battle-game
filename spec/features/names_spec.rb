feature "Entering players" do
  scenario 'Can enter the name of the player' do
    visit('/')
    fill_in :player_1, with: 'Rory'
    fill_in :player_2, with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content "Rory vs. Chris"
  end
end


# feature 'Enter names' do
#   scenario 'submitting names' do
#     visit('/')
#     fill_in :player_1_name, with: 'Dave'
#     fill_in :player_2_name, with: 'Mittens'
#     click_button 'Submit'
#     expect(page).to have_content 'Dave vs. Mittens'
#   end
# end
