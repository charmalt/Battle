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

  scenario "viewing own hit points" do
    sign_in_and_play
    expect(page).to have_text "David's HP: 100"
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
    click_button "Return"
    expect(page).to have_text "Luke's HP: 90"
  end
end

feature "Switch turns" do

  scenario "allow player 2 to play after player 1" do
    sign_in_and_play
    play_a_turn
    expect(page).to have_text "Luke's turn!"
  end

end

feature "Attacking Player 1" do
  scenario "attack and get confirmation" do
    sign_in_and_play
    play_a_turn
    click_button "Attack"
    expect(page).to have_text "Luke attacked David!"
  end

  scenario "reduce player's HP" do
    sign_in_and_play
    play_a_turn
    play_a_turn
    expect(page).to have_text "David's HP: 90"
  end
end

feature "Losing a game" do

  scenario "Player 2 loses the game" do
    sign_in_and_play
    19.times{ play_a_turn }
    expect(page).to have_text "Game over! David won!"
  end

end
