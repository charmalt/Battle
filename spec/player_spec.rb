describe Player do

  subject(:player1) { described_class.new(name) }
  subject(:player2) { described_class.new('David') }
  let(:name) { 'Luke' }
  let(:rate) { 10 }

  describe '#initialize' do

    it 'has name' do
      expect(player1.name).to be name
    end

    it 'has max hit points' do
      expect(player1.hp).to be Player::HP_MAX
    end

  end

  it 'attacked player loses HP' do
    expect{ player2.hit(rate) }.to change{ player2.hp }.by(-rate)
  end


end
