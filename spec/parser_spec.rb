require_relative '../lib/parser.rb'

describe Parser do
  let(:parser) { Parser.new('example.rb') }
  let(:names_array) do
    { variables: { 'var' => 2, 'sec +' => 2 },
      classes: {
        'bad_example' => { name: 'bad_example', line: 1 },
        'bad' => { name: 'bad', line: 4 },
        'Bad_Example' => { name: 'Bad_Example', line: 6 },
        'GoodExample' => { name: 'GoodExample', line: 9 },
        'Mu_Foo' => { name: 'Mu_Foo', line: 14 },
        'BADNAME' => { name: 'BADNAME', line: 16 },
        'badname' => { name: 'badname', line: 19 },
        'GoodName' => { name: 'GoodName', line: 20 }
      },
      modules: {
        'bad_example' => { name: 'bad_example', line: 22 },
        'bad' => { name: 'bad', line: 25 },
        'Bad_Example' => { name: 'Bad_Example', line: 27 },
        'GoodExample' => { name: 'GoodExample', line: 30 },
        'Mu_Foo' => { name: 'Mu_Foo', line: 35 },
        'BADNAME' => { name: 'BADNAME', line: 37 },
        'badname' => { name: 'badname', line: 40 },
        'GoodName' => { name: 'GoodName', line: 41 }
      } }
  end

  describe '#new' do
    it 'opens and stores the given file in a file object' do
      expect(parser.file).to be_kind_of(File)
    end
  end
  describe '#extract_names' do
    it 'return a hash' do
      expect(parser.extract_names).to be_kind_of(Hash)
    end
    it 'contain all names in a given file' do
      expect(parser.extract_names).to eq(names_array)
    end
    it 'names are categorized into three groups' do
      expect(parser.extract_names.size).to eq(3)
    end
  end
end
