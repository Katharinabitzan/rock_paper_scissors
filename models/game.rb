class Game
attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play()
  moves = [@player1, @player2]
    if @player1 == @player2
      return "Draw! Try again."
    elsif moves.include?("scissor") && moves.include?("rock")
      winning_move = moves.index("rock")
      return "Rock beats Scissor. Player #{winning_move + 1} wins!"
    elsif moves.include?("rock") && moves.include?("paper")
      winning_move = moves.index("paper")
      return "Paper beats Rock. Player #{winning_move + 1} wins!"
    elsif moves.include?("paper") && moves.include?("scissor")
      winning_move = moves.index("scissor")
      return "Scissor beats Paper. Player #{winning_move + 1} wins!"
    else
      return "Not valid game. Please try again."
    end
  end

  def count_games
    counter = 0

  end

end
