require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
require('./lib/clock')
require('./lib/coin_combinations')
require('./lib/find_and_replace')
require('./lib/palindrome')
require('./lib/ping_pong')
require('./lib/queen_attack')
require('./lib/rochambeau')
require('./lib/scrabble')
require('./lib/word_frequency')
require('./lib/highlight')
require('./lib/parcels')
require('./lib/triangle')


configure :development do
set :bind, '0.0.0.0'
set :port, 3000 # Not really needed, but works well with the "Preview" menu option
end



get ('/') do
  erb(:root)
end

get('/rochambeau_1p') do
  erb(:rochambeau_1p)
end

get('/rochambeau_2p') do
  erb(:rochambeau_2p)
end

get('/rochambeau_result_1p') do
  @roch_result = (params.fetch('object').to_i).rochambeau(rand(2))
  erb(:rochambeau_result)
end

get('/rochambeau_result_2p') do
  @roch_result = (params.fetch('object').to_i).rochambeau((params.fetch('object2').to_i))
  erb(:rochambeau_result)
end

get('/fnr_form') do
  erb(:fnr_form)
end

get('/fnr_out') do
  @changed_string = params.fetch('text').fnr(params.fetch('find'), params.fetch('replacement'))
  erb(:fnr_out)
end

get('/palindrome_form') do
  erb(:palindrome_form)
end

get('/palindrome_result') do
  @input = params.fetch('palindrome')
  @result = params.fetch('palindrome').palindrome()
  erb(:palindrome_result)
end

get('/anagram_form') do
  erb(:anagram_form)
end

get('/anagram_out') do
  @word = params.fetch('anagram').anagram(params.fetch('word_list'))
  erb(:anagram_out)
end

get('/coins') do
  erb(:coins_form)
end

get('/coins_out') do
  @coins_output = params.fetch('coins').to_i.coin_combinations()
  erb(:coins_out)
end

get('/ping-pong') do
  @pp_out = (params.fetch('pp_input').to_i).ping_pong()
  erb(:ping_pong_show)
end

get('/queen_attack') do
@q_result = ([(params.fetch('queen_x')).to_i, (params.fetch('queen_y')).to_i]).queen_attack([(params.fetch('attacker_x')).to_i,  (params.fetch('attacker_y')).to_i])
erb(:queen_attack_show)
end

get('/clock') do
  @c_hours = params.fetch('c_hours')
  @c_minutes = params.fetch('c_minutes')
  @c_output = [(params.fetch('c_hours')).to_i,(params.fetch('c_minutes')).to_i].clock()
  @c_output_long = (360.00 - @c_output)
  erb(:clock_show)
end

get ('/scrabble_form') do
erb(:scrabble_form)
end

get ('/scrabble_results') do
@score = params.fetch('word').scrabble
erb(:scrabble_results)
end

get('/wf_form') do
erb(:wf_form)
end

get('/wf_result') do
@input_string = params.fetch('input_string')
@findme = params.fetch('findme')
@final_count = (@input_string.word_frequency(@findme))
@input_string = @input_string.highlight(@findme)
erb(:wf_result)
end

get('/parcels') do
  @height = params.fetch('height').to_i
  @width = params.fetch('width').to_i
  @length = params.fetch('length').to_i
  @cost = Parcel.new(@width, @height, @length).cost_to_ship
  erb(:parcel_out)
end

get('/triangle') do
  @a = params.fetch('a').to_i
  @b = params.fetch('b').to_i
  @c = params.fetch('c').to_i
  @triangle_result = Triangle.new(@a, @b, @c)
  erb(:triangle_out)
end