require_relative 'naming_conventions.rb'
class Parser
  attr_reader :names
  include NamingConventions
  def initialize(file)
    @file = File.open(file)
    @file_path = file
    @names = {
      variables: {},
      classes: {},
      modules: {}
    }
    extract_names
  end
end
