RSpec.feature "Entering players" do
  scenario "Each can enter their names" do
    visit "/"
    fill_in('player1', :with => 'Charlene')
    fill_in('player2', :with => 'Dione')
    click_button 'Submit'
    names = ("Player 1: Charlene vs. Player 2: Dione")
    expect(page).to have_text names
  end
end

RSpec.feature "Hit points" do
  scenario "viewing opponent's hit points" do
    visit "/play"
    expect(find('progress')['value']).to eq('40')
    expect(find('progress')['max']).to eq('100')
    expect(page).to have_text("Player 2's HP: 40")
  end
end
