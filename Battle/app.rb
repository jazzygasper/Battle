#!/usr/bin/env ruby
require './lib/player.rb'
require './lib/game.rb'

require 'sinatra/base'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
     $game = Game.new(Player.new(params[:name1]),Player.new(params[:name2]))
     redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/switch' do
    @game = $game
    @game.switch_turns
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
