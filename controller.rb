require('sinatra')
require('sinatra/contrib/all')
require_relative('models/game')
require('json')

get '/' do
  erb(:homepage)
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