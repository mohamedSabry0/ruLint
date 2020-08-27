require_relative 'variables_handling.rb'
module NamingConventions
  def extract_names
    file.each_with_index do |line, index|
      if line =~ /[^"']=/
        matched = line =~ /[^"']=/
        VariablesHandling.extract_variables(line, @names, matched, index)
      elsif line =~ /^\s*class /
        classes = line[/[^(\s*class )]\w+/]
        @names[:classes][classes] = { name: classes, line: index }
      elsif line =~ /^\s*module /
        modules = line[/[^(\s*module )]\w+/]
        @names[:modules][modules] = { name: modules, line: index }
      end
    end
    @names
  end
end
