class Parser
  def initialize(file)
    @file = File.open(file)
    @file_path = file
    @names = {
      variables: {},
      classes: {},
      modules: {}
    }
    line_parser
    extract_names
  end

  def line_parser
    # check for method file line extractor
    @lines = []
    @file.each do |line|
      @lines.push(line)
    end
    @lines
  end

  def extract_names
    @lines.each_with_index do |line, index|
      matched = line =~ /[^"']=/
      if !(line =~ /[^"']=/).nil?
        variable = line[0...matched].split(',').strip # TODO: trim white spaces
        # TODO: is enumerable then .each for the array
        @names[:variables][variable] =
          if @names[:variables].has_key(variable)
            @names[:variables][variable][:count] + 1
          else
            # TODO: if /[+-/*]=/ use before declaration
            { count: 1, line: index }
          end
      elsif !(line =~ /^\s*class/).nil?
        name = line[/[^(class )]\w+/]
        @names[:classes][name] = { name: name, line: index }
        p name
      end
    end
  end
end
