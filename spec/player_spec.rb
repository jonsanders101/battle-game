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

  # describe '#hit points' do
  #   it 'start with default hitpoints' do
  #     expect(rory.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  #   end
  # end

end
