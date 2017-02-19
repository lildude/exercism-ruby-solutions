class Array
  def accumulate
    self.each.inject([]) {|result, operation| result << yield(operation)}
  end
end

module BookKeeping
  VERSION = 1
end
