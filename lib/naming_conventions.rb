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

  def validate_classes(names)
    class_warnings = []
    names[:classes].each do |_key, value|
      if (value[:name] =~ /^([A-Z][a-z]*)+$/).nil?
        class_warnings.push("naming_warning @(#{file_path}, line##{value[:line] + 1}):" \
         "'#{value[:name]}' is not a good class name. Follow CamelCase naming convention\n")
      end
    end
    class_warnings
  end
  def validate_modules(names)
    module_warnings = []
    names[:modules].each do |_key, value|
      if (value[:name] =~ /^([A-Z][a-z]*)+$/).nil?
        class_warnings.push("naming_warning @(#{file_path}, line##{value[:line] + 1}):" \
         "'#{value[:name]}' is not a good module name. Follow CamelCase naming convention\n")
      end
    end
    module_warnings
  end
end
