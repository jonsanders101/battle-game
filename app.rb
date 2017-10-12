require 'sinatra/base'


class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  # post '/names' do
  #   @player_1 = params[:player_1]
  #   @player_2 = params[:player_2]
  #   erb :play
  # end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/attack' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :attack
  end

  get '/play2' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :play2
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play2'
  end

  get '/attack2' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :attack2
  end



  # start the server if ruby file executed directly
    run! if app_file == $0   #may not need this with inputing rackup
end
