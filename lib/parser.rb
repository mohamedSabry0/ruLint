
class Parser
  def initialize(file)
    @file = File.open(file)
    @names = {
        variables:{},
        classes:{},
        modules:{}
    }
    line_parser
    extract_names
  end
  def line_parser
    #check for method file line extractor
    @lines = Array.new
    @file.each do |line|
        @lines.push(line)
    end
    @lines
  end

  def extract_names
    @lines.each_with_index do |line, index|
      matched = line =~ /[^"']=/
      #class /^\s*class/
      #module /^\s*module/
      if (line =~ /[^"']=/) != nil
        variable = line[0...matched].split(',') #TODO trim white spaces 
        # TODO is enumerable then .each for the array
        @names[:variables][variable] = if @names[:variables].has_key(variable)
                                @names[:variables][variable][:count] + 1
                              else
                                #TODO if /[+-/*]=/ use before decl
                                {count: 1, line: index}
                              end
      elsif (line =~ /^\s*class/) != nil
        matched = 5 + (line =~ /class/)
        name = line[/class .+(;|\n)/][6...-1]
        @names[:classes][name] = {count: 1, line: index}
        
      end
    end
  end
end