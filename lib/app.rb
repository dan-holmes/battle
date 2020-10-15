require "sinatra/base"
require "player"

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params["player1_name"])
    $player2 = Player.new(params["player2_name"])
    redirect "/play"
  end

  get "/play" do
    @player1_name = session[:player1]
    @player2_name = session[:player2]
    session[:player1_hp] = 100
    session[:player2_hp] = 100
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]
    erb(:play)
  end

  get "/attack" do
    @attack = true
    session[:player2_hp] -= 20
    @player1_name = session[:player1]
    @player2_name = session[:player2]
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
