require 'player'

describe Player do

  subject(:player1) { described_class.new "name1"}
  subject(:player2) { described_class.new "name2"}

  describe '#name' do
    it 'returns the players name' do
      expect(player1.name).to eq("name1")
    end
  end

  describe '#hit_points' do
    it 'returns hitpoints' do
      expect(player1.hit_points).to eq(described_class::DEFAULT_POINTS)
    end
  end

  describe '#receive_damage' do
    it 'reduces player hitpoints' do
      expect { player2.receive_damage }.to change { player2.hit_points }.by(-5)
    end
  end

  describe '#dead?' do
    it 'returns true if player hitpoints is 0' do
      6.times { player2.receive_damage }
      expect(player2.dead?).to eq true
    end
  end
end
