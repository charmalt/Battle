describe Player do

  subject(:player1) { described_class.new(name) }
  subject(:player2) { described_class.new('David') }
  let(:name) { 'Luke' }

  describe '#initialize' do

    it 'has name' do
      expect(player1.name).to be name
    end

    it 'has max hit points' do
      expect(player1.hp).to be Player::HP_MAX
    end

  end

  describe '#attack' do

    it 'allows player to damage other player' do
      expect(player2).to receive(:hit)
      player1.attack(player2)
    end

    it 'attacked player loses HP' do
      expect{ player2.hit }.to change{ player2.hp }.by(-Player::HIT_STRENGTH)
    end

  end
end
