require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/anagram_search') do
  @ = params.fetch("")
  @ = params.fetch("")
  @ = @.word_count(@)
  erb(:word_count)
end
