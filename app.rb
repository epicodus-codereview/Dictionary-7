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

post('/add_definition/:id') do
  @word = Words.find(params.fetch('id'))
  @definitions = @word.definitions()
  @definitions = Definitions.all()
  definition = params.fetch('definition')
  new_definition = Definitions.new(:definition =>definition)
  new_definition.save()
  @word.add_definition(new_definition)
  @definitions = Definitions.all()
  erb(:add_definitions)


end
