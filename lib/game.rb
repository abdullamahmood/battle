require_relative 'player'

class Game

	attr_reader :player_1, :player_2
	attr_accessor :round

	def initialize(player_1,player_2)
		@player_1 = player_1
		@player_2 = player_2
		@round = true
	end

  def attack(player)
    player.receive_damage
  end

end