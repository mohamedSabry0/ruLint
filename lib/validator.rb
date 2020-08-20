class Validator
  attr_accessor :class_warnings, :module_warnings
  attr_reader :names, :file_path
  def initialize(names, file_path)
    @names = names
    @file_path = file_path
    validate_classes(names)
    validate_modules(names)
  end

  def validate_classes(names)
    @class_warnings = []
    names[:classes].each do |_key, value|
      if (value[:name] =~ /^([A-Z][a-z]*)+$/).nil?
        @class_warnings.push("naming_warning @(#{file_path}, line##{value[:line] + 1}):" \
         "\n'#{value[:name]}' is not a good class name. Follow CamelCase naming convention\n\n")
      end
    end
    @class_warnings
  end

  def validate_modules(names)
    @module_warnings = []
    names[:modules].each do |_key, value|
      if (value[:name] =~ /^([A-Z][a-z]*)+$/).nil?
        @class_warnings.push("naming_warning @(#{file_path}, line##{value[:line] + 1}):" \
         "\n'#{value[:name]}' is not a good module name. Follow CamelCase naming convention\n\n")
      end
    end
    @module_warnings
  end

  def validate_names
    names_warnings = @module_warnings + @class_warnings
  end
end