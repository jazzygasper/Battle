require 'game'

describe Game do
  subject(:bob) { double :bob, :hp => 0 }
  subject(:tina) { double :tina, :hp => 40 }
  subject(:game) {described_class.new(bob, tina)}
  
  	describe '#initialize' do

  		it 'with player1' do
  			expect(game.player_1).to eq bob
  		end

  		it 'with player2' do
  			expect(game.player_2).to eq tina
  		end

  		it 'with current player as player1' do
  			expect(game.current_player).to eq bob
  		end
  	end

    describe '#switch_player' do

    	it "changes the player" do
    		game.switch_player
    		expect(game.current_player).to eq tina
    	end

    end

    describe '#current_opponent' do

    	it 'returns the current opponent' do
    		expect(game.current_opponent).to eq tina
    	end
    end

    describe '#game_over?' do

      it 'returns true when a player reaches 0 HP' do
        expect(game).to be_game_over
      end

    end

end
