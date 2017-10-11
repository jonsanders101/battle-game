feature "Entering players" do
  scenario 'Can enter the name of the player' do
    sign_in_and_play
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
