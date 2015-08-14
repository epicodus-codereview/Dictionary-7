require('sinatra')
require('sinatra/reloader')
require('./lib/words')
require('./lib/definitions')
also_reload('lib/**/*.rb')

get('/') do
  @words = Words.all()
  erb(:index)
end

post('/new_word') do
  @all = Words.all()
  word = params.fetch('word')
  new_word = Words.new(:word =>word)
  new_word.save()
  @words = Words.all()
  erb(:index)
end
