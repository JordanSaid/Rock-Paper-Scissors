require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require('json')

get '/' do
  return "Type your move at the end of the url bar by using 1 of (/play/rock, /play/scissors or /play/paper) and prepare to be dazzled by 21st century gaming technology"
end

get '/play/:player1' do
  player1 = params[:player1].downcase.to_s
  player2 = rand(0..2)
  game = Game.new(player1, player2)
  @result = game.play
  erb(:result)
end

# get '/play/:player1' do
#   player1 = params[:player1].downcase.to_s
#   game = Game.new(player1, player2)
#   @result = game.play
#   erb(:result)
# end