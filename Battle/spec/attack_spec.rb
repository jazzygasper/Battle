require 'attack'

describe Attack do

subject(:tina) { double :tina, :hp => 40 }
subject(:game) {double :game  }
subject(:attack) { described_class.new(tina)}

	describe '#attack' do

    	it 'a player, which reduces points' do
      		expect(tina).to receive(:lose_hp)
      		Attack.begin(tina)
    	end

	end

end