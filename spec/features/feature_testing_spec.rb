feature "Entering players" do
  scenario 'Can enter the name of the player' do
    sign_in_and_play
    expect(page).to have_content "Chris vs. Rory"
  end
end

feature "Entering player with 20 hit points" do
  scenario 'Can enter player with 20 HP' do
    sign_in_and_play
    expect(page).to have_content "Chris: 20HP"
    expect(page).to have_content "Rory: 20HP"
  end
end

feature "Attacking players" do
  scenario 'Can attack a player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Chris attacked Rory"
  end

  scenario "swaps players after each vicious blow is dealt" do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Chris attacked Rory"
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    expect(page).to have_content "Rory attacked Chris"
  end
end

feature "deducting points" do
  scenario 'player 2 receives damage and loses life' do
    sign_in_and_play
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    expect(page).to have_content "Rory: 15HP"
    expect(page).not_to have_content "Rory: 20HP"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    expect(page).to have_content "Chris: 15HP"
    expect(page).not_to have_content "Chris: 20HP"
  end
end

feature "winning the game" do
  scenario "player 2's life reaches 0" do
    sign_in_and_play
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    click_link 'Attack'
    click_button "Return to battle...if YA DARE"
    expect(page).to have_content "Rory is defeated! Chris is victorious!"
  end
end
