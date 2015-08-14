require ('rspec')
require ('words')

describe(Words) do

  describe("#word") do
    it("lets you make a new word") do
      new_word = Words.new("Frowzy")
      expect(new_word.word()).to(eq("Frowzy"))
    end
  end
end
