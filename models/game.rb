class Game

  attr_accessor :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    
  end


  def play
    if @player1 == "rock" && @player2 == 0
      return "The compuper chose rock too, its a draw"
     elsif @player1 == "paper" && @player2 == 1
      return "The compuper chose paper too, its a draw"
    elsif @player1 == "scissors" && @player2 == 2
      return "The compuper chose scissors too, its a draw"
    elsif @player1 == "rock" && @player2 == 1
      return "The compuper chose paper, you lose"
    elsif @player1 == "rock" && @player2 == 2
      return "The compuper chose scissors, you win"
    elsif @player1 == "paper" && @player2 == 0
      return "The compuper chose rock, you win"
    elsif @player1 == "paper" && @player2 == 2
      return "The compuper chose scissors, you lose"
    elsif @player1 == "scissors" && @player2 == 0
      return "The compuper chose rock, you lose"
    elsif @player1 == "scissors" && @player2 == 1
      return "The compuper chose paper, you win"
    else return "invalid move, whit ye playin at"
    end
  end

end