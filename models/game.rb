class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play

    if @player1 == "scissor" && @player2 == "rock"
      return "rock beats scissor, Player 2 wins!"
    elsif @player1 == "rock" && @player2 == "scissor"
      return "scissor beats paper, Player 2 wins!"
    elsif @player1 == "scissor" && @player2 == "paper"
      return "scissor beats paper, Player 1 wins!"
    elsif @player1 == "paper" && @player2 == "scissor"
      return "scissor beats paper, Player 2 wins!"
    elsif @player1 == "rock" && @player2 == "paper"
      return "paper beats rock, Player 2 wins!"
    elsif @player1 == "paper" && @player2 == "rock"
      return "paper beats rock, Player 1 wins!"
    else
      return "Not valid game"
    end
  end

end
