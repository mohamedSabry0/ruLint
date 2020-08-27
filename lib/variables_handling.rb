module VariablesHandling
  def self.extract_variables(line, names, matched, index)
    variables = line[0..matched].split(',')
    variables.each do |variable|
      variable = variable.strip
      names[:variables][variable] =
        if names[:variables].key?(variable)
          names[:variables][variable][:count] + 1
        else
          { count: 1, line: index }
        end
    end
  end
end
