require_relative '../lib/parser.rb'

describe Parser do
  let(:parser) { Parser.new('../example.rb') }
  describe '#new' do
    it 'initialize and store names hash as accessor' do
      expect(parser.names).to be_kind_of(Hash)
    end
    it 'opens and stores the given file in a file object' do
      expect(parser.file).to be_kind_of(File)
    end
  end
  describe '#extract_names' do
    it 'should be called on a parser object' do
      expect(parser.extract_names).to
    end
  end
  describe '#variables_handling' do
    
  end
end
