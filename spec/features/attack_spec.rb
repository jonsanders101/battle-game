feature "Attacking players" do
  scenario 'Can attack a player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Rory attacked Chris"
  end
end
