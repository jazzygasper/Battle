#!/usr/bin/env ruby

require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello Battle!'
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
