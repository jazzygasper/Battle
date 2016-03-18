#!/usr/bin/env ruby

require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb :homepage
  end

  get '/2_player_form' do
    erb :index
  end

  get '/1_player_form' do
    erb :single_index
  end

  post '/names' do
    player_1 = Player.new(params[:warrior_1])
    if Player.new(params[:warrior_2]).name == nil
      player_2 = Player.new("Computer")
    else
      player_2 = Player.new(params[:warrior_2])
    end
    Game.create(player_1, player_2)
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    Attack.new(Game.instance.current_opponent)
    Attack.begin(Game.instance.current_opponent)
    if Game.instance.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    if Game.instance.current_player.name == 'Computer'
      erb :computer_attack
    else
      erb :attack
    end
  end

  post '/switching' do
    Game.instance.switch_player
    if Game.instance.current_player.name == 'Computer'
      if Game.instance.game_over?
        redirect '/game_over'
      else
        Attack.begin(Game.instance.current_opponent)
        redirect '/attack'
      end
    else
    redirect('/play')
    end
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
