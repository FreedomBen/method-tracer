require 'rainbow'

module MethodTrace
  def MethodTrace.method_trace(color = :green)
    depth = 1
    prefix = "  "
    caller_locations(1, 3).each do |frame|
      puts Rainbow("#{prefix * depth}#{depth} - #{frame}").color(color)
      depth += 1
    end
  end
end
