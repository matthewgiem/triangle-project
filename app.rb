require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangle') do
  @ = params.fetch("")
  @ = params.fetch("")
  erb(:triangle)
end
