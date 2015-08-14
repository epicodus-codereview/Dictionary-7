require ('rspec')
require ('words')

describe(Words) do
  before() do
  Words.clear
end

  describe("#word") do
    it("lets you make a new word") do
      new_word = Words.new(:word=> "Frowzy")
      expect(new_word.word()).to(eq("Frowzy"))
    end
  end

  describe('.all') do
  it('creates empty array to store words') do
    expect(Words.all()).to(eq([]))
  end
end

  describe('#save') do
    it('saves words into words array') do
      new_word = Words.new(:word=> "Frowzy")
      new_word.save()
      expect(Words.all()).to(eq([new_word]))
    end
  end

  describe('.clear') do
    it('clears the words array') do
      Words.clear()
      expect(Words.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a word') do
      new_word = Words.new(:word=> "Frowzy")
      new_word.save()
      expect(new_word.id()).to(eq("Frowzy"))
    end
  end

  describe('#definitions') do
    it('creates an empty array for definitions') do
      new_word = Words.new(:word=> "Frowzy")
      expect(new_word.definitions()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds definition to definitions array') do
      new_word = Words.new(:word=> "Frowzy")
      new_word.save()
      new_definition = Definitions.new(:definition=> "scruffy and neglected in appearance")
      new_definition.save()
      new_word.add_definition(new_definition)
      expect(new_word.definitions()).to(eq([new_definition]))

    end

  end

end
