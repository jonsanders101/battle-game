# require 'app.rb'
require 'player'

describe Player do
  subject(:rory) {Player.new("rory")}
  subject(:bloggs) {Player.new("bloggs")}

  describe '#name' do
    it 'returns the name' do
      expect(rory.name).to eq 'rory'
    end
  end

  describe '#hit points' do
    it 'start with default hitpoints' do
      expect(rory.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(bloggs).to receive(:lose_points)
      rory.attack(bloggs)
    end
  end

    describe '#lose points' do
      it 'deducts points' do
        expect {bloggs.lose_points}.to change {bloggs.life}.by(-5)
      end
    end

  end





#   describe '#lose points' do
#     it 'deducts points' do
#       expect {bloggs.lose_points}.to change {bloggs.life}.by(-10)
#     end
#   end
# end
