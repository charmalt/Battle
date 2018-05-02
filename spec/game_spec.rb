describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#current_player' do

    it 'player 1 starts first' do
      expect(game.current_player).to be player1
    end

  end

  describe '#opponent' do

    it 'set to player playing against current player' do
      expect(game.current_player).to_not be player2
    end

  end

  describe '#switch_turn' do

    before{ game.switch_turn }

    it 'switches current player' do
      expect(game.current_player).to be player2
    end

    it 'switches opponent' do
      expect(game.current_player).to_not be player1
    end

  end

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
      expect(game.player2).to receive(:hit)
      game.attack
    end

  end

  describe '#over' do

    it "returns true if either player has 0 HP left" do
      allow(game.player1).to receive(:hp).and_return(10)
      allow(game.player2).to receive(:hp).and_return(0)
      expect(game.over?).to be true
    end

  end

end
