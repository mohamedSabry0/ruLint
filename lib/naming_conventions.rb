module NamingConventions
  def extract_names
    file.each_with_index do |line, index|
      matched = line =~ /[^"']=/
      if !(line =~ /[^"']=/).nil?
        variable = line[0...matched].split(',')
        @names[:variables][variable] =
          if @names[:variables].key?(variable)
            @names[:variables][variable][:count] + 1
          else
            { count: 1, line: index }
          end
      elsif !(line =~ /^\s*class/).nil?
        name = line[/[^(\s*class )]\w+/]
        names[:classes][name] = { name: name, line: index }
      end
    end
    names
  end

  def validate_classes(names)
    class_warnings = []
    names[:classes].each do |_key, value|
      if (value[:name] =~ /([A-Z][a-z]*)+/).nil?
        class_warnings.push("naming_warning @(#{@file_path}, line##{value[:line] + 1}):" \
         "'#{value[:name]}' is not a good class name. Follow CamelCase naming convention\n")
      end
    end
    class_warnings
  end
end
