require_relative 'naming_conventions.rb'
class Parser
  attr_reader :names, :file
  include NamingConventions
  def initialize
    @names = {
      variables: {},
      classes: {},
      modules: {}
    }
  end

  def parse(file)
    @file_path = file
    @file = File.open(file, "r")
  end
end
