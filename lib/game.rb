require_relative 'player'

class Game

	attr_reader :player_1, :player_2, :current_enemy, :current_turn


	def initialize(player_1,player_2)
		@player_1 = player_1
		@player_2 = player_2
		# @current_enemy = @player_2
		@current_turn = player_1
		@players = [player_1, player_2]
	end

  def attack
		@current_turn == player_1 ? player_2.receive_damage : player_1.receive_damage
  end

	def switch_turns
		@current_turn = opponent_of(current_turn)
	end

	private

	def opponent_of(the_player)
		@players.select{ |player| player!= the_player}.first
	end

end
