require_relative 'player'

class Attack

	def initialize(player)
		@player = player
	end

	def self.begin(player)
		Attack.new(player).attack
	end

  	def attack
      	@player.lose_hp(damage)
  	end

  	def damage
  		Kernel.rand(10)
  	end

end