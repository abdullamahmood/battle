require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super_secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
  	redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    if @game.round
    @game.round = false
    @game.attack(@game.player_2)
	else 
	@game.round = true 
	@game.attack(@game.player_1)
	end

    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
