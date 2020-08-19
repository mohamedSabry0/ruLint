# reading file
require_relative '../lib/parser.rb'
lines = Parser.new('./example.rb')
# TODO: read multiple files
puts lines.validate_classes(lines.names)
