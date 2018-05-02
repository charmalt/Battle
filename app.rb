require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player1])
    $player_2 = Player.new(params[:player2])
    redirect('/play')
  end

  get '/play' do
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    @player2_hp = $player_2.hp
    erb :play
  end

  get '/attack' do
    @player1_name = $player_1.name
    @player2_name = $player_2.name
    $player_2.hit
    erb :attack
  end

  run! if app_file == $0
end
