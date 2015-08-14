class Words

  @@all = []

  attr_reader :word, :id

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = attributes.fetch(:word)
  end

  define_singleton_method(:all) do
  @@all
  end

  define_method(:save) do
  @@all.push(self)
  end

  define_singleton_method(:clear) do
   @@all = []
  end

end
