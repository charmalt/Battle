describe Game do

  subject(:game) { described_class.new }
  let(:player) { double :player, hit: nil}

  describe '#attack' do

    it 'allows player to damage other player' do
      expect(player).to receive(:hit)
      game.attack(player)
    end

  end
end
