describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { 'Luke' }
  
  it 'returns its name' do
    expect(player.name).to be name
  end

end
