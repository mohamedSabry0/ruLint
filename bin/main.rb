# reading file
require_relative '../lib/naming.rb'
names = Naming.new('./example.rb')
# TODO: read multiple files
puts names.validate_classes
