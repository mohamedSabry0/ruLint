require_relative 'parser.rb'
class Naming < Parser
  def validate_classes
    @class_warnings = []
    @names[:classes].each do |_key, value|
      if (value[:name] =~ /([A-Z][a-z]*)+/) == nil
        @class_warnings.push("naming_warning @(#{@file_path}, line##{value[:line]}): '#{value[:name]}' is not a good class name. Follow CamelCase naming convention")
      end
    end
    @class_warnings
  end
end
