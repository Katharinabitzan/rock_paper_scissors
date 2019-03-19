require('sinatra')
require('sinatra/contrib/all')

also_reload('./models/*')
require_relative('models/game.rb')

get('/play/:player1/:player2') do
  players = Game.new(params[:player1], params[:player2])
  @result = players.play
  erb( :result)
end

get('/') do
  erb( :home)
end

get '/stats' do
  @counter = 0
  erb (:stats)
end
