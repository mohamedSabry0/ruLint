require_relative 'naming_conventions.rb'
class Parser
  attr_reader :file_path, :file
  attr_accessor :names
  include NamingConventions
  def initialize(file)
    @names = {
      variables: {},
      classes: {},
      modules: {}
    }
    @file_path = file
    @file = File.open(file, 'r')
  end
end
