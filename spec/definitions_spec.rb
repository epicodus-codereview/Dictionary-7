require('rspec')
require('definitions')

describe(Definitions) do

  describe('#definition') do
    it('returns a definition') do
      new_definition = Definitions.new(:definition=>"scruffy and neglected in appearance")
      expect(new_definition.definition()).to(eq("scruffy and neglected in appearance"))
    end
  end

  describe('.all') do
    it('returns an empty array for definitions') do
      expect(Definitions.all()).to(eq([]))
    end
  end

end
