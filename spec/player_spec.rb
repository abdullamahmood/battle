require 'player'

describe Player do
  subject(:player1) {described_class.new("Apoorva")}
  subject(:player2) {described_class.new("Abdulla")}
  it 'returns the name of tha player' do
    expect(player1.name).to eq "Apoorva"
  end

  it 'returns the player hit points' do
    expect(player1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
describe '#attack' do
  it 'returns the deducted hit points after an attack' do
    expect{player1.attack(player2)}.to change{player2.hit_points}.by -10
  end
end
end
