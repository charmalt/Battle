feature "Entering players" do
  scenario "Each can enter their names" do
    sign_in_and_play
    expect(page).to have_text "Player 1: David vs. Player 2: Luke"
  end
end

feature "View Hit points" do
  scenario "viewing opponent's hit points" do
    sign_in_and_play
    expect(page).to have_text "Luke's HP: 100"
  end
end

feature "Attacking Player 2" do
  scenario "attack and get confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text "David attacked Luke!"
  end

  scenario "reduce player's HP" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text "David attacked Luke!"
    click_button "Return"
    expect(page).to have_text "Luke's HP: 90"
  end

end
