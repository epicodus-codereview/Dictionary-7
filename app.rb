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
  @words = Words.all()
  word = params.fetch('word')
  new_word = Words.new(:word =>word)
  new_word.save()
  @words = Words.all()
  erb(:index)
end

get('/definition/:id') do
  @words = Words.find(params.fetch('id'))
  @definitions = Definitions.all()
  erb(:definition)
  end

post('/new_definition') do
  definition = params.fetch('definition')
  id = params.fetch('id')
  new_definition = Definitions.new(:definition=>definition)
  new_definition.save()
  @words = Words.find(id)
  @words.add_definition(new_definition)
  @definitions = Definitions.all()
  erb(:definition)
end
