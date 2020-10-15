require "sinatra/base"
require "player"
require "game"

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
    $game = Game.new
    erb(:play)
  end

  get "/attack" do
    @attack = true
    $game.attack($player1, $player2)
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
