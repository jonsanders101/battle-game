require 'game'

describe Game do
let(:player) {double(:player)}
let(:subject) {described_class.new(player,player)}


describe "::new" do
  it 'stores players in array' do
    expect(subject.players).to eq([player,player])
  end
end

describe '#attack' do
  it 'damages the player' do
    expect(player).to receive(:lose_points)
    subject.attack(player)
  end
end

end
