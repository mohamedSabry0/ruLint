require_relative '../lib/naming_conventions.rb'
require_relative '../lib/parser.rb'

describe NamingConventions do
  let (:parser) { Parser.new('../example.rb') }
  describe '#extract_names' do
    it 'should be called on a parser object' do
      expect(parser.extract_names).to
    end
  end
end