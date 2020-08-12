
class Parser
    import 'naming'
    import 'variable'
    def initialize(file)
        @file = File.open(file)
    end
    def line_parser
        warnings = Array.new
        @file.each_with_index do |line, index|
            if line =~ /(\t*| *)class/
    end
    def valid_name?(name, type)
        case type
        when 
    end
end