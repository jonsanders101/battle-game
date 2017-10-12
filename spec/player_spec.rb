# require 'app.rb'
require 'player'

describe Player do
  subject(:rory) {Player.new("rory")}

  describe '#name' do
    it 'returns the name' do
      expect(rory.name).to eq 'rory'
    end
  end
end
