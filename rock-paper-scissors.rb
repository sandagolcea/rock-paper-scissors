require 'sinatra/base'

class RPS < Sinatra::Base
  # set :views, Proc.new { File.join(root, "..", "views") }
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
    @computer_choice = ["rock","paper","scissors"].sample

    if !@choice
      # redirect back
      redirect '/'
    end

    @result = if @computer_choice == @choice
      "It's a tie!"
    else

     case @choice 
      
      when 'rock'
         @computer_choice == 'scissors' ? @player : "Computer"
      when 'paper'
         @computer_choice == 'rock' ? @player : "Computer"
      when 'scissors'
        @computer_choice == 'paper' ? @player : "Computer"
      end

    end

    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
