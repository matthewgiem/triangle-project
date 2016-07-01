require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @user_sentence = params.fetch("sentence_to_be_searched_in")
  @user_word = params.fetch("word_to_be_searched")
  @number_of_times_it_apears = @user_sentence.word_identify(@user_word)
  @high_lighted_sentence = @user_sentence.sentence_return_highlighted(@user_word)
  erb(:word_count)
end
