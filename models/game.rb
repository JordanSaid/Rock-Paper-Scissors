class Game

  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    
  end


  def play
    if @player1 == "rock" && @player2 == 0
      return "Compuper chose rock too, its a draw"
     elsif @player1 == "paper" && @player2 == 1
      return "Compuper chose paper too, its a draw"
    elsif @player1 == "scissors" && @player2 == 2
      return "Compuper chose scissors too, its a draw"
    elsif @player1 == "rock" && @player2 == 1
      return "Compuper chose paper, you lose"
    elsif @player1 == "rock" && @player2 == 2
      return "Compuper chose scissors, you win"
    elsif @player1 == "paper" && @player2 == 0
      return "Compuper chose rock, you win"
    elsif @player1 == "paper" && @player2 == 2
      return "Compuper chose scissors, you lose"
    elsif @player1 == "scissors" && @player2 == 0
      return "Compuper chose rock, you lose"
    elsif @player1 == "scissors" && @player2 == 1
      return "Compuper chose paper, you win"
    else return "invalid move, try again"
    end
  end

end