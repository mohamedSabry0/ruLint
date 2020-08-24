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
end
