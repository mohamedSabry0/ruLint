require_relative 'variables_handling.rb'
module NamingConventions
  def extract_names
    file.each_with_index do |line, index|
      if !(line =~ /[^"']=/).nil?
        matched = line =~ /[^"']=/
        VariablesHandling.extract_variables(line, names, matched, index)
      elsif !(line =~ /^\s*class /).nil?
        name = line[/[^(\s*class )]\w+/]
        names[:classes][name] = { name: name, line: index }
      elsif !(line =~ /^\s*module /).nil?
        name = line[/[^(\s*module )]\w+/]
        names[:modules][name] = { name: name, line: index }
      end
    end
    names
  end
end
