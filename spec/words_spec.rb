require ('rspec')
require ('words')

describe(Words) do

  describe("#word") do
    it("lets you make a new word") do
      new_word = Words.new({:word=> "Frowzy", :definition =>" scruffy and neglected in appearance"})
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
    new_word = Words.new({:word=> "Frowzy", :definition =>" scruffy and neglected in appearance"})
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

end
