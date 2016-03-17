class Game

  @@game = nil

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def self.start(player1, player2)
    @@game = Game.new(player1, player2)
  end

  def self.current_game
    @@game
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn = opponent_of(@current_turn)
  end

  def opponent_of(player)
    if player == @player1
      @player2
    else
      @player1
    end
  end

end
