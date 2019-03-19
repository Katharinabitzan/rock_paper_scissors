require('sinatra')
require('sinatra/contrib/all')

also_reload('./models/*')


get('/game/:player1/:player2') do
  p1 = params[:player1]
  p2 = params[:player2]
  if p1 == "scissor" && p2 == "rock"
    return "rock beats scissor, Player 2 wins!"
  elsif p1 == "rock" && p2 == "scissor"
    return "scissor beats paper, Player 2 wins!"
  elsif p1 == "scissor" && p2 == "paper"
    return "scissor beats paper, Player 1 wins!"
  elsif p1 == "paper" && p2 == "scissor"
    return "scissor beats paper, Player 2 wins!"
  elsif p1 == "rock" && p2 == "paper"
    return "paper beats rock, Player 2 wins!"
  elsif p1 == "paper" && p2 == "rock"
    return "paper beats rock, Player 1 wins!"
  else
  # "test"
  end
end


#1 = paper
#2 = Scissor
#3 = rock
