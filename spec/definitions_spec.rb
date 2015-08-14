require('rspec')
require('definitions')

describe(Definitions) do

  describe('#definitions') do
    it('returns a definition') do
      new_definition = Definitions.new("scruffy and neglected in appearance")
      expect(new_definition.definitions()).to(eq("scruffy and neglected in appearance"))
    end
  end

end
