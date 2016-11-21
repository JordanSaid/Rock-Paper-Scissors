require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require('json')

get '/' do
  return "Type your move into the url bar and prepare to be dazzled by the amazing AI"
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