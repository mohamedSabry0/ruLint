require_relative '../lib/validator.rb'

describe Validator do
  let(:names) { Parser.new('example.rb').extract_names }
  let(:validator) { Validator.new(names, 'example.rb') }
  let(:warning_messages) do
    [['naming_warning @(example.rb,line#2):'\
      "\n'bad_example' is not a good class/module name. Follow CamelCase naming convention\n\n"]]
  end
  describe '#warnings' do
    it 'validate given array of names to follow naming conventions' do
      expect(validator.validate_names).to eq(warning_messages)
    end
  end
end
