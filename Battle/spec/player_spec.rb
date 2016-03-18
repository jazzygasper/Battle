require 'player'
describe Player do
  subject(:bob) {described_class.new('Bob')}

  describe '#initialize' do 

    it 'returns name of player when called' do
      expect(bob.name).to eq 'Bob'
    end

    it 'with a default_HP' do
      expect(bob.hp).to eq Player::DEFAULT_HP
    end
    
  end

    describe 'lose_hp' do

      it 'reduces bob\'s hp' do
        expect{bob.lose_hp(4)}.to change{bob.hp}.by (-4)

      end

    end

end
