class Validator
  attr_reader :file_path
  attr_accessor :validate_names
  def initialize(names, file_path)
    @file_path = file_path
    @validate_names = []
    warnings(names[:classes])
    # warnings(names[:modules])
  end

  def warnings(examples)
    names_warnings = []
    examples.each do |_key, value|
      if (value[:name] =~ /^([A-Z][a-z]*)+$/).nil?
        names_warnings.push("naming_warning @(#{file_path}, line##{value[:line] + 1}):" \
         "\n'#{value[:name]}' is not a good class/module name. Follow CamelCase naming convention\n\n")
      end
    end
    @validate_names.push(names_warnings) unless names_warnings.empty?
  end
end
