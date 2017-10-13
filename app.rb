# also known as controller

require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]),Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/play' do
    $game.swap_turn
    erb :play
  end

  get '/attack' do
    $game.attack($game.players[1])
    erb :attack
  end



  # start the server if ruby file executed directly
    run! if app_file == $0   #may not need this with inputing rackup
end
