require 'sinatra/base'

class RPS < Sinatra::Base
  # set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  post '/' do
    @player = params[:player]
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
