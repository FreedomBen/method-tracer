require 'rainbow'

module MethodTrace
  def MethodTrace.method_trace(color = :green, depth = 1)
    cur_depth = 1
    prefix = "  "
    caller_locations(1, depth).each do |frame|
      puts Rainbow("#{prefix * cur_depth}#{cur_depth}:  #{frame.label} - #{frame}").color(color)
      cur_depth += 1
    end
  end
end
