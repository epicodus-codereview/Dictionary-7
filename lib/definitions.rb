class Definitions

  attr_reader :definition
  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
    @id = attributes.fetch(:definition)
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

  define_method(:id) do
    @id
  end

end
