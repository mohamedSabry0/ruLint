#reading file
require_relative '../lib/naming.rb'
names = Naming.new('./example.rb')
puts names.validate_classes
