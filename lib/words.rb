class Words

  @@all = []

  attr_reader :word, :id

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = attributes.fetch(:word)
    @definitions = []
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

  define_method(:definitions) do
    @definitions
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@all.each() do |word|
      if word.id().eql?(identification)
        found_word = word
      end
    end
    found_word
  end
end
