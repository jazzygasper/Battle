require_relative 'player'

class Game

attr_reader :player_1, :player_2, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
    @current_player = @player_1
  end

  def self.create(player_1, player_2)
  	@game = Game.new(player_1, player_2)
  end

  def self.instance
  	@game
  end

  # def attack
  #     current_opponent.lose_hp
  # end

  def switch_player
  	@current_player == @player_1 ? @current_player = @player_2 : @current_player = @player_1
  end

  def current_opponent
  	@current_player == @player_1 ? @player_2 : @player_1
  end

  def game_over?
  	current_opponent.hp <=0 || @current_player.hp <=0
  end

end
