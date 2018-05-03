require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    $game = Game.new(Player.new, Player.new)
    erb :index
  end

  post '/names' do
    $game.player1.set_name(params[:player1])
    $game.player2.set_name(params[:player2])
    redirect('/play')
  end

  get '/play' do
    @game = $game
    redirect('/gameover') if @game.over?
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack
    @game.switch_turn
    erb :attack
  end

  get '/gameover' do
    @game = $game
    erb :gameover
  end

  run! if app_file == $0
end
