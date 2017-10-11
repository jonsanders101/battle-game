feature "Entering player 2 hit points" do
  scenario 'Can enter player 2 HP' do
    sign_in_and_play
    expect(page).to have_content "Chris: 20HP"
  end
end
