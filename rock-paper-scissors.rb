require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    @player = params[:player]
    session[:player] = @player
    erb :index
  end

  get '/game' do
    @player = session[:player] 
    @choice = params[:choice]

    if !@choice
      redirect back
    end

    game = Game.new
    @computer_choice = game.choice
    @result = game.result(@player,@choice,@computer_choice)

    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
