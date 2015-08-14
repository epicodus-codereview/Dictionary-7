class Definitions

  attr_reader :definition
  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
  end

  define_singleton_method(:all) do
    @@all_definitions
  end

end
