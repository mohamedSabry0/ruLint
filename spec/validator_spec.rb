require_relative '../lib/validator.rb'

describe Validator do
  let(:names) { Parser.new('example.rb').extract_names }
  let(:validator) { Validator.new(names, 'example.rb') }
  let(:warning_messages) do
    [["naming_warning @(example.rb, line#2):"\
      "\n'bad_example' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#5):"\
      "\n'bad' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#7):"\
      "\n'Bad_Example' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#15):"\
      "\n'Mu_Foo' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#20):"\
      "\n'badname' is not a good class/module name. Follow CamelCase naming convention\n\n"]
      ["naming_warning @(example.rb, line#23):"\
      "\n'bad_example' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#26):"\
      "\n'bad' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#28):"\
      "\n'Bad_Example' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#36):"\
      "\n'Mu_Foo' is not a good class/module name. Follow CamelCase naming convention\n\n",
      "naming_warning @(example.rb, line#41):"\
      "\n'badname' is not a good class/module name. Follow CamelCase naming convention\n\n"]]
  end
  describe '#warnings' do
    it 'validate given array of names to follow naming conventions' do
      expect(validator.validate_names).to eq(warning_messages)
    end
  end
end
