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
  @definitions = @words.definitions()
  erb(:definition)
end

post('/new_definition') do
  definition = params.fetch('definition')
  new_definition = Definitions.new(:definition =>definition)
  # new_definition.save() # removed because unneeded for this exercise
  id = params.fetch('id')
  @word = Words.find(id) # use singular @word to be clear that this represents 1 word object
  @word.add_definition(new_definition)
  # @definitions = Definitions.all() # not used (you only need definitions for a specific word, not ALL definitions)
  redirect("/definition/#{id}")
end

# try to follow convention by using /words/:id rather than /definition/:id for 
