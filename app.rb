# also known as controller

require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.current_game
  end

  post '/names' do
    player1 = Player.new(params[:player_1])
    player2 = Player.new(params[:player_2])
    @game = Game.new_game(player1, player2)
    redirect '/play'
  end

  get '/play' do
    #@game = Game.current_game
    erb :play
  end

  get '/attack' do
    #@game = Game.current_game
    @game.attack(@game.players[1])
    erb :attack
  end

  post '/switch-turns' do
    #@game = Game.current_game
    @game.swap_turn
    redirect '/play'
  end



  # start the server if ruby file executed directly
    run! if app_file == $0   #may not need this with inputing rackup
end
