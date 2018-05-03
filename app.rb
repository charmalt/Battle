require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions


  get '/' do
   Game.save_instance(Player.new, Player.new)
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    @game.player1.set_name(params[:player1])
    @game.player2.set_name(params[:player2])
    redirect('/play')
  end

  get '/play' do
    redirect('/gameover') if @game.over?
    erb :play
  end

  get '/attack' do
    @game.attack
    @game.switch_turn
    erb :attack
  end

  get '/gameover' do
    erb :gameover
  end

  run! if app_file == $0
end
