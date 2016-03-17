class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_turn, @opponent = @player2, @player1
  end



end
