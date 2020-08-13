class Variable < Parser
  # validate variable being used, declare before use
  def extract_variables
    #extract var declaration only not usage
    @variables = @names[:variables]
  end

  def used?
    #TODO loop through @variables if a particular key has value 1 
    #store it with corresponding line number in hash
  end

  def used_before_declaration?
    #not including undefined variable
  end
end
