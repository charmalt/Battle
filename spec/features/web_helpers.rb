def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'David'
  fill_in :player2, with: 'Luke'
  click_button 'Submit'
end

def play_a_turn
  click_button "Attack"
  click_button "Return"
end
