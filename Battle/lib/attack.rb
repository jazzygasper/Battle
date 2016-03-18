require_relative 'player'

class Attack

	attr_reader :player
	
	def initialize(player)
		@player = player
	end

	def self.begin(player)
		Attack.new(player).attack
	end

	def self.poison(player)
		Attack.new(player).player.lose_hp(poison_hp)
	end

  	def attack
      @player.lose_hp(damage)
  	end

		def poison
			@player.lose_hp(damage * probability)
		end

		def poison_hp
			damage * probability
		end

		def probability
			Kernel.rand(2)
		end

  	def damage
  		Kernel.rand(10)
  	end

end
