require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/player_1_turn'
  end

  get '/player_1_turn' do
    @game = $game
    erb :player_1_turn
  end

  get '/player_2_turn' do
    @game = $game
    erb :player_2_turn
  end

  get '/player_1_attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :player_1_attack
  end

  get '/player_2_attack' do
    @game = $game
    @game.attack(@game.player_1)
    erb :player_2_attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
