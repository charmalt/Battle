describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { 'Luke' }

  it 'returns its name' do
    expect(player.name).to be name
  end

  it 'loses HP when attacked' do
    expect{ player.hit }.to change{ player.hp }.by(-Player::HIT_STRENGTH)
  end

end
