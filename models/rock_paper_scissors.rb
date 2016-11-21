class Game

  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    
  end

  def play
    if @player1 == @player2
      return "Draw"
    elsif @player1 == "rock" && @player2 == "paper"
      return "Paper wins"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "Rock wins"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Paper wins"
    elsif @player1 == "paper" && @player2 == "scissors"
      return "Scissors wins"
    elsif @player1 == "scissors" && @player2 == "rock"
      return "Rock wins"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Scissors wins"
    else return "invalid move, try again"
    end
  end

end

      