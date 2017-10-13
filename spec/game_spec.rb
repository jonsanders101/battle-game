require 'game'

describe Game do
let(:player1) {double(:player1)}
let(:player2) {double(:player2)}
let(:subject) {described_class.new(player1,player2)}


describe "::new" do
  it 'stores players in array' do
    expect(subject.players).to eq([player1,player2])
  end
end

describe '#attack' do
  it 'damages the player' do
    expect(player1).to receive(:lose_points)
    subject.attack(player1)
  end
end

describe '#swap_turns' do
  it 'moves first player to the end of the array' do
    expect { subject.swap_turn }. to change{ subject.players }.from([player1, player2]).to([player2, player1])
  end
end

end
