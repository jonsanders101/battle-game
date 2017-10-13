require 'game'

describe Game do
let(:subject) {described_class.new}
let(:player) {double(:player)}


describe 'attack' do
  it 'damages the player' do
    expect(player).to receive(:lose_points)
    subject.attack(player)
  end
end

end
