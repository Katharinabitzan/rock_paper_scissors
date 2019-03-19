require('sinatra')
require('sinatra/contrib/all')

also_reload('./models/*')
require_relative('models/game.rb')

get('/play/:player1/:player2') do
  players = Game.new(params[:player1], params[:player2])
  players.play
end
