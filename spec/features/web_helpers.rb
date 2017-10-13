def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Chris'
  fill_in :player_2, with: 'Rory'
  click_button 'Enter the Arena of Death'
end
