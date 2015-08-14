class Words

  @@all = []

  attr_reader :word

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end

  define_singleton_method(:all) do
  @@all
  end
end
