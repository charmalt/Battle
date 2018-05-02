describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#player1' do

    it 'retrieves player 1' do
      expect(game.player1).to be player1
    end

  end

  describe '#player2' do

    it 'retrieves player 1' do
      expect(game.player2).to be player2
    end

  end

  describe '#attack' do

    it 'allows player to damage other player' do
      expect(player2).to receive(:hit)
      game.attack(player2)
    end

  end
  
end
